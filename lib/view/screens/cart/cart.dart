import 'package:e_commerce/constance/list_const.dart';
import 'package:e_commerce/view/screens/cart/widget/swipe_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_commerce/view/screens/cart/widget/cart_content_widget.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsetsDirectional.only(top: 30.h),
      itemBuilder: (context, index) {
        return Dismissible(
          key: const Key('1'),
          background: const SwipeWidget(
            elevation: true,
            alignment: AlignmentDirectional.centerStart,
            color: Color(0xffFFC107),
          ),
          secondaryBackground: const SwipeWidget(
            elevation: true,
            alignment: AlignmentDirectional.centerEnd,
            color: Color(0xffFF3D00),
            isFavorite: false,
          ),
          onDismissed: (direction) {
            if (direction == DismissDirection.endToStart) {
              print("delete");
            } else if (direction == DismissDirection.startToEnd) {
              print("add to favorite");
            }
          },
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
            child: CartContentWidget(index: index),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 16.h,
        );
      },
      shrinkWrap: true,
      itemCount: ListConst.cartImages.length,
    );
  }
}
