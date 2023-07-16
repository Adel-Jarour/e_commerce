import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
    this.onTap,
  });

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      maxWidth: double.infinity,
      child: Padding(
        padding: EdgeInsetsDirectional.only(start: 24.5.w),
        child: InkWell(
          onTap: () {
            (onTap != null) ?
              onTap!()
            : Get.back();
          },
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
                size: 20.0.r,
              ),
              SizedBox(width: 4.0.w),
              // Text(
              //   Strings.back,
              //   style: TextStyle(
              //     color: ColorConst.primaryColor,
              //     fontSize: 12.sp,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
