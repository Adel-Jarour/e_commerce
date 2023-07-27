import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/controller/check_out/check_out_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomDiv extends StatelessWidget {
  CustomDiv({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;
  final CheckOutController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 800),
        height: 1.4.h,
        margin: EdgeInsetsDirectional.only(top: 15.h),
        decoration: BoxDecoration(
          color: (controller.currentStepIndex > index)
              ? ColorConst.primaryColor
              : const Color(0xffDDDDDD),
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    );
  }
}
