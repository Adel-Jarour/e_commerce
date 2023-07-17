import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/controller/auth/register_controller.dart';
import 'package:e_commerce/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RegisterInputFieldsWidget extends StatelessWidget {
  RegisterInputFieldsWidget({Key? key}) : super(key: key);

  final RegisterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          onEditingComplete: () {
            controller.emailFocusNode.requestFocus();
          },
          hintTxt: Strings.nameTextField,
          controller: controller.name,
          focusNode: controller.nameFocusNode,
        ),
        SizedBox(
          height: 38.h,
        ),
        CustomTextFormField(
          onEditingComplete: () {
            controller.passFocusNode.requestFocus();
          },
          hintTxt: Strings.emailTextField,
          keyboardType: TextInputType.emailAddress,
          controller: controller.email,
          focusNode: controller.emailFocusNode,
        ),
        SizedBox(
          height: 38.h,
        ),
        CustomTextFormField(
          onEditingComplete: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          hintTxt: Strings.passwordTextField,
          obscureText: true,
          controller: controller.password,
          focusNode: controller.passFocusNode,
        ),
        SizedBox(
          height: 60.h,
        ),
      ],
    );
  }
}
