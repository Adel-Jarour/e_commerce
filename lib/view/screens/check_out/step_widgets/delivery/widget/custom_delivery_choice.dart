import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/controller/check_out/check_out_controller.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomDeliveryChoice extends StatelessWidget {
  CustomDeliveryChoice({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Function onTap;
  final int index;

  final CheckOutController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            onTap();
          },
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      txt: title,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CustomText(
                      txt: subTitle,
                      fontSize: 14.sp,
                      height: 1.5,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 34.w,
              ),
              Container(
                width: 24.w,
                height: 24.h,
                padding: EdgeInsetsDirectional.all(5.r),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xff000000).withAlpha(20),
                ),
                child: (controller.currentDeliveryIndex != index)
                    ? Container()
                    : Container(
                        width: 14.w,
                        height: 14.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConst.primaryColor,
                        ),
                      ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 38.h,
        )
      ],
    );
  }
}
