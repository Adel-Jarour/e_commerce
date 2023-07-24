import 'package:e_commerce/constance/list_const.dart';
import 'package:e_commerce/controller/cart/cart_controller.dart';
import 'package:e_commerce/view/screens/cart/cart/widget/swipe_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_commerce/view/screens/cart/cart/widget/cart_content_widget.dart';
import 'package:get/get.dart';


class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);

  final CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 16.w, end: 16.w, top: 30.h),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Dismissible(
              key: const Key('1'),
              background: TrashWidget(
                onTap: () {},
                width: 45.w,
                height: 45.h,
                elevation: true,
                alignment: AlignmentDirectional.centerStart,
              ),
              secondaryBackground: TrashWidget(
                onTap: () {},
                width: 45.w,
                height: 45.h,
                elevation: true,
                alignment: AlignmentDirectional.centerStart,
              ),
              child: CartContentWidget(index: index),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 16.h,);
          },
          shrinkWrap: true,
          itemCount: ListConst.cartImages.length),
    );
  }
}
