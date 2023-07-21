import 'package:e_commerce/constance/images_const.dart';
import 'package:e_commerce/controller/home/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class ProductDetailTopWidget extends StatelessWidget {
  ProductDetailTopWidget({
    super.key,
  });

  final ProductDetailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 196.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImagesConst.shirtHome,
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
      alignment: Alignment.center,
      padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: Icon(Icons.arrow_back_ios_rounded, size: 25.r),
          ),
          InkWell(
            onTap: () {
              controller.changeFavorite();
            },
            child: Container(
              height: 40.h,
              width: 40.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              alignment: Alignment.center,
              child: Icon(
                controller.isFavorite ? Icons.star : Icons.star_border_outlined,
                size: 25.r,
                color: controller.isFavorite
                    ? const Color(0xffFFD700)
                    : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
