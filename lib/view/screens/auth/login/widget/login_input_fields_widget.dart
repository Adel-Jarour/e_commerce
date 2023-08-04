import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/controller/auth/login_controller.dart';
import 'package:e_commerce/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginInputFieldsWidget extends StatelessWidget {
  const LoginInputFieldsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) => Form(
        key: controller.formKey,
        child: Column(
          children: [
            CustomTextFormField(
              onEditingComplete: () {
                controller.passFocusNode.requestFocus();
              },
              hintTxt: Strings.emailTextField,
              keyboardType: TextInputType.emailAddress,
              controller: controller.email,
              focusNode: controller.emailFocusNode,
              errorText:
                  (controller.emailShowingError) ? Strings.emailError : null,
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
              errorText:
                  (controller.passShowingError) ? Strings.passError : null,
            )
          ],
        ),
      ),
    );
  }
}
