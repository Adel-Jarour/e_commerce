import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/constance/images_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrashWidget extends StatelessWidget {
  const TrashWidget({
    super.key,
    required this.onTap,
    required this.elevation,
    this.height,
    this.width,
    this.alignment
  });

  final Function? onTap;
  final double? width;
  final double? height;
  final bool elevation;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? AlignmentDirectional.topEnd,
      child: InkWell(
        onTap: () {
          onTap!();
        },
        child: Container(
          width: width ?? 34.w,
          height: height ?? 34.h,
          padding: EdgeInsets.symmetric(vertical: 8.9.h, horizontal: 9.89.w),
          margin: EdgeInsets.only(top: 10.h),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorConst.primaryColor,
            boxShadow: elevation ? [
              const BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 20,
                spreadRadius: 0,
                color: ColorConst.greyTextColor,
              ),
            ] : [],
          ),
          alignment: Alignment.center,
          child: Image.asset(
            ImagesConst.trashCart,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
