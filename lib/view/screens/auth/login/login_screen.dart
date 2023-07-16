import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/view/screens/auth/login/widget/card_login_widget.dart';
import 'package:e_commerce/view/screens/auth/login/widget/facebook_google_buttons_widget.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.only(
          top: 126.h,
          start: 16.w,
          end: 15.w,
        ),
        child: Column(
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
    );
  }
}