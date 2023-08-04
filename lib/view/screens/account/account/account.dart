import 'package:e_commerce/constance/images_const.dart';
import 'package:e_commerce/controller/account/account_controller.dart';
import 'package:e_commerce/view/screens/account/account/widget/menus_widget.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Account extends StatelessWidget {
  Account({Key? key}) : super(key: key);

  final AccountController controller = Get.put(AccountController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 58.h, start: 21.w, end: 11.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 120.h,
                  width: 120.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        ImagesConst.electricKettleCart,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      txt: 'Adel Jarour',
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      txt: 'iamdavid@gmail.com',
                      fontSize: 16.sp,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 112.h,
            ),
            MenusWidget(),
          ],
        ),
      ),
    );
  }
}