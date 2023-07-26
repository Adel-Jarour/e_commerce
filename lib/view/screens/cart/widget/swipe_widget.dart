import 'package:e_commerce/constance/images_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwipeWidget extends StatelessWidget {
  const SwipeWidget(
      {super.key,
      required this.elevation,
      required this.color,
      this.isFavorite = true,
      this.height,
      this.width,
      this.alignment});

  final double? width;
  final double? height;
  final bool elevation;
  final bool? isFavorite;
  final Color color;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      decoration: BoxDecoration(
        color: color,
      ),
      padding: EdgeInsetsDirectional.symmetric(horizontal: 33.w),
      alignment: alignment,
      child: isFavorite!
          ? const Icon(
              Icons.star,
              color: Colors.white,
            )
          : Image.asset(
              ImagesConst.trashCart,
              fit: BoxFit.cover,
            ),
    );
  }
}
