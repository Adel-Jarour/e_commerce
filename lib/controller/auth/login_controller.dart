import 'package:e_commerce/data/cloud/api_call_status.dart';
import 'package:e_commerce/data/cloud/api_const.dart';
import 'package:e_commerce/data/cloud/request_type.dart';
import 'package:e_commerce/routes/app_routes.dart';
import 'package:e_commerce/view/components/custom_snakbar.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;

  late FocusNode emailFocusNode;
  late FocusNode passFocusNode;

  final formKey = GlobalKey<FormState>();

  String emailError = 'must contain @';
  String passError = 'must be at least 3 char and at most 15 char';

  bool emailShowingError = false;
  bool passShowingError = false;
  bool login = false;

  Future performLogin() async {
    if (formKey.currentState!.validate() && checkData()) {
      await signIn();
    }
  }

  ApiCallStatus apiCallStatus = ApiCallStatus.holding;

  Future signIn() async {
    login = true;
    update();
    await BaseClient.safeApiCall(
      ApiConst.login, // url
      RequestType.post,
      queryParameters: {
        'email': email.text,
        'password': password.text,
      },
      onLoading: () {
        apiCallStatus = ApiCallStatus.loading;
        update();
      },
      onSuccess: (response) {
        CustomSnackBar.showCustomSnackBar(
            title: 'Register', message: response.statusMessage!);
        apiCallStatus = ApiCallStatus.success;
        login = false;
        update(); // update ui
        Get.toNamed(Routes.bottomNav);
      },
      onError: (error) {
        // BaseClient.handleApiError(error);
        CustomSnackBar.showCustomErrorSnackBar(
          title: 'Login Error',
          message: error.message,
        );
        apiCallStatus = ApiCallStatus.error;
        login = false;
        update();
      },
    );
  }

  bool checkPass() {
    if (password.text.length >= 3 && password.text.length <= 15) {
      passShowingError = false;
      update();
      return true;
    }
    passShowingError = true;
    update();
    return false;
  }

  bool checkEmail() {
    if (GetUtils.isEmail(email.text)) {
      emailShowingError = false;
      update();
      return true;
    }
    emailShowingError = true;
    update();
    return false;
  }

  bool checkData() {
    bool email = checkEmail();
    bool pass = checkPass();
    if (email && pass) return true;
    return false;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    email = TextEditingController();
    password = TextEditingController();

    emailFocusNode = FocusNode();
    passFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    email.dispose();
    password.dispose();

    emailFocusNode.dispose();
    passFocusNode.dispose();
  }
}
