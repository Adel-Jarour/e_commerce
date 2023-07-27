import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/controller/check_out/check_out_controller.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomStep extends StatelessWidget {
  CustomStep({
    Key? key,
    required this.index,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final int index;
  final String title;
  final Function onTap;
  final CheckOutController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 800),
            width: 30.w,
            height: 30.h,
            padding: EdgeInsetsDirectional.all(7.r),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: (controller.currentStepIndex >= index)
                    ? ColorConst.primaryColor
                    : Colors.grey,
              ),
            ),
            child: (controller.currentStepIndex >= index)
                ? AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              width: 16.w,
              height: 16.h,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: ColorConst.primaryColor),
            )
                : Container(),
          ),
          SizedBox(
            height: 12.h,
          ),
          CustomText(
            txt: title,
            fontSize: 12.sp,
            color: (controller.currentStepIndex >= index)
                ? Colors.black
                : ColorConst.greyTextColor,
          ),
        ],
      ),
    );
  }
}
