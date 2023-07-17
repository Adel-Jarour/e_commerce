import 'package:e_commerce/controller/bottom_nav/bottom_nav_controller.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomBottomNavContent extends StatelessWidget {
  CustomBottomNavContent({
    Key? key,
    required this.index,
    required this.title,
    required this.image,
    this.color,
  }) : super(key: key);

  final int index;
  final String title;
  final String image;
  final Color? color;

  final BottomNavController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      onTap: () {
        controller.setIndex(index);
      },
      child: Column(
        children: [
          (controller.currentIndex == index)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      txt: title,
                      fontSize: 14.sp,
                    ),
                    Container(
                      width: 3.w,
                      height: 3.h,
                      margin: EdgeInsetsDirectional.only(top: 4.h),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                )
              : Image.asset(image),
        ],
      ),
    );
  }
}
