import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/images_const.dart';
import 'package:e_commerce/controller/auth/splash_controller.dart';
import 'package:e_commerce/view/screens/auth/splash/widget/corner_widget.dart';
import 'package:e_commerce/view/screens/auth/splash/widget/point_widget.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (_) => Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsetsDirectional.symmetric(vertical: 49.h),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImagesConst.splash),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CornerWidget(
                firstCorner: math.pi / 2,
                secondCorner: math.pi,
              ),
              PointWidget(
                start: 137.w,
                top: 14.h,
              ),
              PointWidget(
                start: 66.w,
                top: 148.h,
              ),
              PointWidget(
                start: 156.w,
                top: 151.h,
                bottom: 112.8.h,
              ),
              CornerWidget(
                firstCorner: math.pi / 100,
                secondCorner: -math.pi / 2,
              ),
              SizedBox(
                height: 48.h,
              ),
              Center(
                child: CustomText(
                  txt: Strings.scanningAuth,
                  fontSize: 16.sp,
                  color: Colors.white,
                  letterSpacing: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
