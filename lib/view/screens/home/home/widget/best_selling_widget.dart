import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/list_const.dart';
import 'package:e_commerce/controller/home/home_controller.dart';
import 'package:e_commerce/routes/app_routes.dart';
import 'package:e_commerce/view/widgets/custom_device_detail.dart';
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
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 16.w),
      child: Column(
        children: [
          Row(
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
          SizedBox(
            height: 15.h,
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 164.w / 319.h,
              crossAxisSpacing: 15.w,
              mainAxisSpacing: 20.h,
            ),
            itemBuilder: (context, index) {
              return CustomDeviceDetail(
                image: ListConst.bestSellingImages[index],
                title: ListConst.bestSellingTitles[index],
                onTap: () {
                  Get.toNamed(Routes.productDetail);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
