
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class LoginController extends GetxController {

  late TextEditingController email;
  late TextEditingController password;

  late FocusNode emailFocusNode;
  late FocusNode passFocusNode;

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