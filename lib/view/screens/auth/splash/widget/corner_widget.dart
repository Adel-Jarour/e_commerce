import 'package:e_commerce/constance/images_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CornerWidget extends StatelessWidget {
  CornerWidget({
    Key? key,
    required this.firstCorner,
    required this.secondCorner,
  }) : super(key: key);

  double firstCorner;
  double secondCorner;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.2.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Transform.rotate(
            angle: firstCorner,
            child: Image.asset(ImagesConst.corner),
          ),
          Transform.rotate(
            angle: secondCorner,
            child: Image.asset(ImagesConst.corner),
          ),
        ],
      ),
    );
  }
}
