import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/images_const.dart';
import 'package:e_commerce/controller/bottom_nav/bottom_nav_controller.dart';
import 'package:e_commerce/view/screens/bottom_nav/widget/custom_bottom_nav_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      builder: (_) => Container(
        height: 84.h,
        padding: EdgeInsetsDirectional.only(top: 23.h),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -1),
              blurRadius: 20,
              color: const Color(0xff242424).withAlpha(10),
              spreadRadius: 2
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomBottomNavContent(
              index: 0,
              title: Strings.exploreBottomNav,
              image: ImagesConst.explore,
            ),
            CustomBottomNavContent(
              index: 1,
              title: Strings.cartBottomNav,
              image: ImagesConst.cart,
            ),
            CustomBottomNavContent(
              index: 2,
              title: Strings.accountBottomNav,
              image: ImagesConst.user,
            ),
          ],
        ),
      ),
    );
  }
}

