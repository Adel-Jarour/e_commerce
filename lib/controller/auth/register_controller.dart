import 'package:e_commerce/data/cloud/api_call_status.dart';
import 'package:e_commerce/data/cloud/api_const.dart';
import 'package:e_commerce/data/cloud/request_type.dart';
import 'package:e_commerce/routes/app_routes.dart';
import 'package:e_commerce/view/components/custom_snakbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController password;

  late FocusNode nameFocusNode;
  late FocusNode emailFocusNode;
  late FocusNode passFocusNode;

  final formKey = GlobalKey<FormState>();

  String nameError = 'must be at least 3 char';
  String emailError = 'must contain @';
  String passError = 'must be at least 3 char and at most 15 char';

  bool nameShowingError = false;
  bool emailShowingError = false;
  bool passShowingError = false;
  bool creatingAccount = false;

  Future performSignUp() async {
    if (formKey.currentState!.validate() && checkData()) {
      await register();
    }
  }

  ApiCallStatus apiCallStatus = ApiCallStatus.holding;

  Future register() async {
    creatingAccount = true;
    update();
    await BaseClient.safeApiCall(
      ApiConst.register, // url
      RequestType.post,
      queryParameters: {
        'full_name': name.text,
        'email': email.text,
        'password': password.text,
        'gender': 'M',
      },
      onLoading: () {
        apiCallStatus = ApiCallStatus.loading;
        update();
      },
      onSuccess: (response) {
        CustomSnackBar.showCustomSnackBar(
            title: 'Register', message: response.statusMessage!);
        apiCallStatus = ApiCallStatus.success;
        creatingAccount = false;
        update(); // update ui
      },
      onError: (error) {
        BaseClient.handleApiError(error);
        apiCallStatus = ApiCallStatus.error;
        creatingAccount = false;
        update();
      },
    );
  }

  bool checkName() {
    if (name.text.length >= 3) {
      if (GetUtils.isAlphabetOnly(name.text[0])) {
        nameShowingError = false;
        update();
        return true;
      } else {
        nameError = 'must begin with char';
        nameShowingError = true;
        update();
        return false;
      }
    }
    nameError = 'must be at least 3 char';
    nameShowingError = true;
    update();
    return false;
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
    bool name = checkName();
    bool email = checkEmail();
    bool pass = checkPass();
    if (name && email && pass) return true;
    return false;
  }

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
