import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/routes/app_routes.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:e_commerce/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartFooterWidget extends StatelessWidget {
  const CartFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                txt: Strings.totalCart,
                fontSize: 12.sp,
                color: ColorConst.greyTextColor,
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomText(
                txt: "\$4500",
                fontSize: 18.sp,
                color: ColorConst.primaryColor,
              ),
            ],
          ),
          CustomButton(
            txt: Strings.checkoutButton,
            onTap: () {
              Get.toNamed(Routes.delivery);
            },
            width: 146.w,
          ),
        ],
      ),
    );
  }
}
