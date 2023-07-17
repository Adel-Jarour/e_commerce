import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/view/screens/auth/login/widget/card_login_widget.dart';
import 'package:e_commerce/view/screens/auth/login/widget/facebook_google_buttons_widget.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:e_commerce/controller/auth/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: 126.h,
            start: 16.w,
            end: 15.w,
          ),
          child: GetBuilder<LoginController>(
            init: LoginController(),
            builder: (_) => Column(
              children: [
                const CardLoginWidget(),
                SizedBox(
                  height: 28.h,
                ),
                CustomText(
                  txt: Strings.orAuth,
                  fontSize: 18.sp,
                ),
                SizedBox(
                  height: 43.h,
                ),
                const FacebookGoogleButtonsWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}