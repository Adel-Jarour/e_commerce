import 'package:e_commerce/controller/home/home_controller.dart';
import 'package:e_commerce/view/screens/home/home/widget/best_selling_widget.dart';
import 'package:e_commerce/view/screens/home/home/widget/categories_widget.dart';
import 'package:e_commerce/view/screens/home/home/widget/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsetsDirectional.only(top: 65.h, bottom: 14.h, start: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchWidget(),
            CategoriesWidget(),
            BestSellingWidget(),
          ],
        ),
      ),
    );
  }
}
