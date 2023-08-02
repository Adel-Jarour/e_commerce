import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:e_commerce/data/cloud/api_exception.dart';
import 'package:e_commerce/view/components/custom_snakbar.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


enum RequestType {
  get,
  post,
  put,
  delete,
}

class BaseClient {
  static final Dio _dio = Dio(
      BaseOptions(
          headers: {
            'Content-Type' : 'application/json',
            'Accept' : 'application/json'
          }
      )
  )
    ..interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    ));

  static const int _timeoutInSeconds = 10;

  static get dio => _dio;

  static safeApiCall(
      String url,
      RequestType requestType, {
        Map<String, dynamic>? headers,
        Map<String, dynamic>? queryParameters,
        required Function(Response response) onSuccess,
        Function(ApiException)?   onError,
        Function(int value, int progress)? onReceiveProgress,
        Function(int total, int progress)?
        onSendProgress, // while sending (uploading) progress
        Function? onLoading,
        dynamic data,
      }) async {
    try {
      await onLoading?.call();
      late Response response;
      if (requestType == RequestType.get) {
        response = await _dio.get(
          url,
          onReceiveProgress: onReceiveProgress,
          queryParameters: queryParameters,
          options: Options(
            headers: headers,
          ),
        );
      } else if (requestType == RequestType.post) {
        response = await _dio.post(
          url,
          data: data,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress,
          queryParameters: queryParameters,
          options: Options(headers: headers),
        );
      } else if (requestType == RequestType.put) {
        response = await _dio.put(
          url,
          data: data,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress,
          queryParameters: queryParameters,
          options: Options(headers: headers),
        );
      } else {
        response = await _dio.delete(
          url,
          data: data,
          queryParameters: queryParameters,
          options: Options(headers: headers),
        );
      }
      await onSuccess(response);
    } on DioException catch (error) {
      _handleDioError(error: error, url: url, onError: onError);
    } on SocketException {
      _handleSocketException(url: url, onError: onError);
    } on TimeoutException {
      _handleTimeoutException(url: url, onError: onError);
    } catch (error, stackTrace) {
     print(stackTrace);
      _handleUnexpectedException(url: url, onError: onError, error: error);
    }
  }

  static download(
      {required String url,
        required String savePath,
        Function(ApiException)? onError,
        Function(int value, int progress)? onReceiveProgress,
        required Function onSuccess}) async {
    try {
      await _dio.download(
        url,
        savePath,
        options: Options(receiveTimeout: const Duration(seconds: _timeoutInSeconds), sendTimeout: const Duration(seconds: _timeoutInSeconds)),
        onReceiveProgress: onReceiveProgress,
      );
      onSuccess();
    } catch (error) {
      var exception = ApiException(url: url, message: error.toString());
      onError?.call(exception) ?? _handleError(error.toString());
    }
  }

  static _handleUnexpectedException(
      {Function(ApiException)? onError,
        required String url,
        required Object error}) {
    if (onError != null) {
      onError(ApiException(
        message: error.toString(),
        url: url,
      ));
    } else {
      _handleError(error.toString());
    }
  }

  static _handleTimeoutException(
      {Function(ApiException)? onError, required String url}) {
    if (onError != null) {
      onError(ApiException(
        message: 'Strings.serverNotResponding.tr',
        url: url,
      ));
    } else {
      _handleError('Strings.serverNotResponding.tr');
    }
  }

  static _handleSocketException(
      {Function(ApiException)? onError, required String url}) {
    if (onError != null) {
      onError(ApiException(
        message: 'Strings.noInternetConnection.tr',
        url: url,
      ));
    } else {
      _handleError('Strings.noInternetConnection.tr');
    }
  }

  static _handleDioError(
      {required DioException error,
        Function(ApiException)? onError,
        required String url}) {

    if (error.response?.statusCode == 404) {
      if (onError != null) {
        return onError(ApiException(
          message: 'Strings.urlNotFound.tr',
          url: url,
          statusCode: 404,
        ));
      } else {
        return _handleError('Strings.urlNotFound.tr');
      }
    }

    if (error.message != null && error.message!.toLowerCase().contains('socket')) {
      if (onError != null) {
        return onError(ApiException(
          message: 'Strings.noInternetConnection.tr',
          url: url,
        ));
      } else {
        return _handleError('Strings.noInternetConnection.tr');
      }
    }

    if (error.response?.statusCode == 500) {
      var exception = ApiException(
        message: 'Strings.serverError.tr',
        url: url,
        statusCode: 500,
      );

      if (onError != null) {
        return onError(exception);
      } else {
        return handleApiError(exception);
      }
    }

    var exception = ApiException(
        url: url,
        message: error.message ?? 'Un Expected Api Error!',
        response: error.response,
        statusCode: error.response?.statusCode);
    if (onError != null) {
      return onError(exception);
    } else {
      return handleApiError(exception);
    }
  }

  static handleApiError(ApiException apiException) {
    String msg = apiException.toString();
    CustomSnackBar.showCustomErrorSnackBar(title: 'Register failed' ,message: msg);
  }

  static _handleError(String msg) {
    CustomSnackBar.showCustomErrorToast(message: msg);
  }
}