import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/constance/list_const.dart';
import 'package:e_commerce/controller/bottom_nav/bottom_nav_controller.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartContentWidget extends StatelessWidget {
  CartContentWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;
  // final BottomNavController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 120.h,
      child: Row(
        children: [
          Container(
            width: 120.w,
            height: double.infinity,
            decoration: BoxDecoration(
              color: ColorConst.greyTextColor,
              image: DecorationImage(
                image: AssetImage(ListConst.cartImages[index]),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 15.h, start: 30.w),
            child: GetBuilder<BottomNavController>(
              builder: (controller) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomText(
                    txt: ListConst.cartTitles[index],
                  ),
                  const CustomText(
                    txt: "\$1100",
                    color: ColorConst.primaryColor,
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(start: 11.w, end: 10.w),
                    decoration: BoxDecoration(
                      color: const Color(0xff000000).withAlpha(15),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            print("counter is: ${controller.counter}");
                            controller.addToCounter();
                          },
                          child: Icon(
                            Icons.add,
                            size: 20.r,
                          ),
                        ),
                        SizedBox(
                          width: 23.5.w,
                        ),
                        CustomText(
                          txt: '${controller.counter}',
                          fontSize: 14.sp,
                        ),
                        SizedBox(
                          width: 22.w,
                        ),
                        InkWell(
                          overlayColor:
                              MaterialStateProperty.all(ColorConst.greyTextColor),
                          onTap: () {
                            controller.miniToCounter();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: Icon(
                              Icons.minimize,
                              size: 20.r,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
