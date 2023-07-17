
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {

  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController password;

  late FocusNode nameFocusNode;
  late FocusNode emailFocusNode;
  late FocusNode passFocusNode;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    name = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();

    nameFocusNode = FocusNode();
    emailFocusNode = FocusNode();
    passFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    name.dispose();
    email.dispose();
    password.dispose();
    nameFocusNode.dispose();
    emailFocusNode.dispose();
    passFocusNode.dispose();
  }
}