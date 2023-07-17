import 'package:e_commerce/controller/bottom_nav/bottom_nav_controller.dart';
import 'package:e_commerce/view/screens/bottom_nav/widget/bottom_nav_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavWidget(),
      body: GetBuilder<BottomNavController>(
        init: BottomNavController(),
        builder: (controller) => controller.screens[controller.currentIndex],
      ),
    );
  }
}
