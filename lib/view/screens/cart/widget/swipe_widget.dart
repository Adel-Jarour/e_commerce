import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/constance/images_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrashWidget extends StatelessWidget {
  const TrashWidget({
    super.key,
    required this.onTap,
    required this.elevation,
    required this.color,
    this.height,
    this.width,
    this.alignment
  });

  final Function? onTap;
  final double? width;
  final double? height;
  final bool elevation;
  final Color color;
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
          width: width ?? double.infinity,
          height: height ?? double.infinity,
          // padding: EdgeInsets.symmetric(vertical: 8.9.h, horizontal: 9.89.w),
          // margin: EdgeInsets.only(top: 10.h),
          decoration: BoxDecoration(
            color: color,
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
