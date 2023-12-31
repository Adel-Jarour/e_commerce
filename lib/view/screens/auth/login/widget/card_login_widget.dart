import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/controller/auth/login_controller.dart';
import 'package:e_commerce/data/cloud/api_call_status.dart';
import 'package:e_commerce/view/screens/auth/login/widget/forget_password_widget.dart';
import 'package:e_commerce/view/screens/auth/login/widget/login_input_fields_widget.dart';
import 'package:e_commerce/view/screens/auth/login/widget/welcome_widget.dart';
import 'package:e_commerce/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardLoginWidget extends StatelessWidget {
  CardLoginWidget({
    super.key,
  });

  final LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 16.w,
        vertical: 15.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.0),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            blurRadius: 15,
            color: const Color(0xff242424).withAlpha(20),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WelcomeWidget(),
          const LoginInputFieldsWidget(),
          const ForgetPasswordWidget(),
          Align(
            alignment: AlignmentDirectional.center,
            child: CustomButton(
              txt: Strings.signInButton,
              onTap: () {
                controller.performLogin();
              },
              enabled: controller.apiCallStatus == ApiCallStatus.loading,
            ),
          ),
        ],
      ),
    );
  }
}
