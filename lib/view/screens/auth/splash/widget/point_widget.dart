import 'package:e_commerce/constance/images_const.dart';
import 'package:flutter/material.dart';

class PointWidget extends StatelessWidget {
  PointWidget({
    Key? key,
    required this.start,
    required this.top,
    this.bottom
  }) : super(key: key);

  double start;
  double top;
  double? bottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: start,
        top: top,
        bottom: bottom ?? 0
      ),
      child: Image.asset(ImagesConst.point),
    );
  }
}
