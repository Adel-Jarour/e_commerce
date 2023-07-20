import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/controller/home/home_controller.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:e_commerce/view/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BestSellingWidget extends StatelessWidget {
  BestSellingWidget({Key? key}) : super(key: key);

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(end: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                txt: Strings.bestSellingHome,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
              CustomTextButton(
                txt: Strings.seeAllHome,
                onTap: () {},
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: controller.bestSellingImages.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 164.w / 319.h,
            crossAxisSpacing: 15.w,
            mainAxisSpacing: 20.h,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    controller.bestSellingImages[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 240.h,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomText(
                    txt: controller.bestSellingTitles[index],
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
          },
        ),
      ],
    );
  }
}
