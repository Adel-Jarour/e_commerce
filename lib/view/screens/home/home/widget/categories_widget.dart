import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/list_const.dart';
import 'package:e_commerce/controller/home/home_controller.dart';
import 'package:e_commerce/routes/app_routes.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({Key? key}) : super(key: key);

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          txt: Strings.categoriesHome,
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 19.h,
        ),
        SizedBox(
          height: 90.h,
          child: ListView.builder(
            itemCount: ListConst.categoriesImages.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsetsDirectional.only(end: 20.w),
                child: InkWell(
                  onTap: () {
                    final String title = ListConst.categoriesTitles[index];
                    Get.toNamed(
                      Routes.categoryResult,
                      arguments: title,
                    );
                  },
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  child: Column(
                    children: [
                      Container(
                        width: 60.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            image:
                                AssetImage(ListConst.categoriesImages[index]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                      CustomText(
                        txt: ListConst.categoriesTitles[index],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
