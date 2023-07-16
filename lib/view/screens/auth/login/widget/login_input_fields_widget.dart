import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginInputFieldsWidget extends StatelessWidget {
  const LoginInputFieldsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          onEditingComplete: () {},
          hintTxt: Strings.emailTextField,
        ),
        SizedBox(
          height: 38.h,
        ),
        CustomTextFormField(
          onEditingComplete: () {},
          hintTxt: Strings.passwordTextField,
          obscureText: true,
        )
      ],
    );
  }
}
