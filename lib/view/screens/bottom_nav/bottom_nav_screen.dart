import 'package:e_commerce/view/screens/cart/widget/cart_footer_widget.dart';
import 'package:e_commerce/controller/bottom_nav/bottom_nav_controller.dart';
import 'package:e_commerce/view/screens/bottom_nav/widget/bottom_nav_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      init: BottomNavController(),
      builder: (controller) => Scaffold(
        bottomNavigationBar: const BottomNavWidget(),
        persistentFooterButtons: (controller.currentIndex != 1)
            ? null
            : [
                const CartFooterWidget(),
              ],
        body: controller.screens[controller.currentIndex],
      ),
    );
  }
}
