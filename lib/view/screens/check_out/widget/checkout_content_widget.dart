import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/controller/check_out/check_out_controller.dart';
import 'package:e_commerce/view/screens/check_out/widget/custom_div.dart';
import 'package:e_commerce/view/screens/check_out/widget/custom_step.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CheckOutContentWidget extends StatelessWidget {
  CheckOutContentWidget({Key? key}) : super(key: key);

  final CheckOutController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          start: 16.w, end: 16.w, top: 30.h, bottom: 17.h),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomStep(
                index: 0,
                title: Strings.deliveryCheckout,
                onTap: () {
                  controller.setStepIndex(0);
                },
              ),
              CustomDiv(
                index: 0,
              ),
              CustomStep(
                index: 1,
                title: Strings.addressCheckout,
                onTap: () {
                  controller.setStepIndex(1);
                },
              ),
              CustomDiv(
                index: 1,
              ),
              CustomStep(
                index: 2,
                title: Strings.summaryCheckout,
                onTap: () {
                  controller.setStepIndex(2);
                },
              ),
            ],
          ),
          SizedBox(
            height: 32.h,
          ),
          controller.screenBody[controller.currentStepIndex],
        ],
      ),
    );
  }
}