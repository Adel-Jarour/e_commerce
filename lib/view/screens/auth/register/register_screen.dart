import 'package:e_commerce/controller/auth/register_controller.dart';
import 'package:e_commerce/view/screens/auth/register/widget/card_register_widget.dart';
import 'package:e_commerce/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 88.h, start: 16.w),
          child: GetBuilder<RegisterController>(
            init: RegisterController(),
            builder: (_) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomButton(
                  txt: "",
                  onTap: () {
                    Get.back();
                  },
                  widget: Icon(Icons.arrow_back_ios_rounded, size: 27.r),
                  width: 25.w,
                  high: 30.h,
                  colorButton: Colors.white,
                ),
                SizedBox(
                  height: 62.h,
                ),
                const CardRegisterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
