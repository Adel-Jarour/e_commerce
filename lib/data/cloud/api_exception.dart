import 'package:dio/dio.dart';

class ApiException implements Exception {
  final String url;
  final String message;
  final int? statusCode;
  final Response? response;

  ApiException({
    required this.url,
    required this.message,
    this.response,
    this.statusCode,
  });


  @override
  toString() {
    String result = '';

    result += "${response?.data['message']}";

    if (result.isEmpty) {
      result += message;
    }

    return result;
  }
}
