import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDeviceDetail extends StatelessWidget {
  const CustomDeviceDetail({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
    this.newDevice = false,
  });

  final String image;
  final String title;
  final Function onTap;
  final bool newDevice;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 240.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: !newDevice
                ? Container()
                : Container(
                    width: 49.w,
                    height: 20.h,
                    margin: EdgeInsetsDirectional.only(
                        top: 8.h, bottom: 208.h, start: 107.w, end: 8.w),
                    padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 12.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffE80057),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    alignment: Alignment.center,
                    child: CustomText(
                      txt: Strings.newHome,
                      fontSize: 12.sp,
                      color: Colors.white,
                    ),
                  ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
            txt: title,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 8.h,
          ),
          CustomText(
            txt: "Bang and Olufsen",
            fontSize: 12.sp,
            color: ColorConst.greyTextColor,
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomText(
            txt: "75\$",
            fontSize: 16.sp,
            color: ColorConst.primaryColor,
          ),
        ],
      ),
    );
  }
}
