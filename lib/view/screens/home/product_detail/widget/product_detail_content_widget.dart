import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/controller/home/product_detail_controller.dart';
import 'package:e_commerce/view/screens/home/product_detail/widget/size_color_widget.dart ';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetailContentWidget extends StatelessWidget {
  ProductDetailContentWidget({Key? key}) : super(key: key);

  final ProductDetailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsetsDirectional.symmetric(horizontal: 16.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            txt: Strings.productDetailTitleHome,
            fontSize: 26.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 25.1.h,
          ),
          SizeColorWidget(),
          SizedBox(
            height: 33.7.h,
          ),
          CustomText(
            txt: Strings.detailsHome,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 15.3.h,
          ),
          CustomText(
            txt: controller.detailDesc,
            fontSize: 16.sp,
            height: 2,
          ),
        ],
      ),
    );
  }
}