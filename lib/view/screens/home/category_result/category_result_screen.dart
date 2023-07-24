import 'package:e_commerce/controller/home/category_result_controller.dart';
import 'package:e_commerce/view/screens/home/category_result/widget/category_result_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/view/screens/home/category_result/widget/category_result_app_bar_widget.dart';
import 'package:get/get.dart';

class CategoryResultScreen extends StatelessWidget {
  const CategoryResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryResultController>(
      init: CategoryResultController(),
      builder: (controller) => Scaffold(
        body: CustomScrollView(
          slivers: [
            CategoryResultAppBarWidget(),
            const SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  CategoryResultContentWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
