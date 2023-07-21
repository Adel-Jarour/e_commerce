import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/controller/home/product_detail_controller.dart';
import 'package:e_commerce/view/screens/home/product_detail/widget/product_detail_bottom_nav_widget.dart';
import 'package:e_commerce/view/screens/home/product_detail/widget/product_detail_top_widget.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailController>(
      init: ProductDetailController(),
      builder: (controller) => Scaffold(
        bottomNavigationBar: ProductDetailBottomNavWidget(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetailTopWidget(),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w, vertical: 4.2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    txt: Strings.productDetailTitleHome,
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 25.1.h,),
                  Row(
                    children: [],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


