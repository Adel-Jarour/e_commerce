import 'package:e_commerce/controller/home/product_detail_controller.dart';
import 'package:e_commerce/view/screens/home/product_detail/widget/product_detail_bottom_nav_widget.dart';
import 'package:e_commerce/view/screens/home/product_detail/widget/product_detail_content_widget.dart';
import 'package:e_commerce/view/screens/home/product_detail/widget/product_detail_sliver_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailController>(
      init: ProductDetailController(),
      builder: (controller) => Scaffold(
        bottomNavigationBar: ProductDetailBottomNavWidget(),
        body: CustomScrollView(
          slivers: [
            ProductDetailSliverAppBarWidget(),
            SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  ProductDetailContentWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
