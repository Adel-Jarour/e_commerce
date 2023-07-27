import 'package:e_commerce/controller/check_out/check_out_controller.dart';
import 'package:e_commerce/view/screens/check_out/widget/check_out_app_bar_widget.dart';
import 'package:e_commerce/view/screens/check_out/widget/checkout_bottom_nav_widget.dart';
import 'package:e_commerce/view/screens/check_out/widget/checkout_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckOutController>(
      init: CheckOutController(),
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: CheckoutBottomNavWidget(),
        body: CustomScrollView(
          slivers: [
            const CheckOutAppBarWidget(),
            SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  CheckOutContentWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
