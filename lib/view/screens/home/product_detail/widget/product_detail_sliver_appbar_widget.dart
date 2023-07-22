import 'package:e_commerce/constance/images_const.dart';
import 'package:e_commerce/controller/home/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetailSliverAppBarWidget extends StatelessWidget {
  ProductDetailSliverAppBarWidget({
    super.key,
  });

  final ProductDetailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 196.h,
      backgroundColor: Colors.white,
      elevation: 1,
      pinned: true,
      snap: false,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          ImagesConst.shirtHome,
          fit: BoxFit.cover,
        ),
      ),
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              size: 25.r,
              color: Colors.black,
            ),
          ),
          InkWell(
            onTap: () {
              controller.changeFavorite();
            },
            overlayColor: MaterialStateProperty.all(Colors.transparent),
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
