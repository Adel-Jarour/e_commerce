import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/controller/home/product_detail_controller.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:e_commerce/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class ProductDetailBottomNavWidget extends StatelessWidget {
  ProductDetailBottomNavWidget({
    super.key,
  });

  final ProductDetailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.h,
      padding:
      EdgeInsetsDirectional.symmetric(vertical: 17.h, horizontal: 30.w),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -1),
            blurRadius: 20,
            color: const Color(0xff242424).withAlpha(5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                txt: Strings.priceHome,
                fontSize: 12.sp,
                color: ColorConst.greyTextColor,
              ),
              CustomText(
                txt: "\$ 175",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: ColorConst.primaryColor,
              ),
            ],
          ),
          CustomButton(
            txt: Strings.addButton,
            onTap: () {
              controller.addToCart();
            },
            width: 146.w,
            enabled: controller.isAdded,
          ),
        ],
      ),
    );
  }
}
