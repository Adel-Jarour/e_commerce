import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/controller/check_out/check_out_controller.dart';
import 'package:e_commerce/view/screens/check_out/widget/checkout_bottom_nav_widget.dart';
import 'package:e_commerce/view/screens/check_out/widget/checkout_content_widget.dart';
import 'package:e_commerce/view/widgets/back_button.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        body: CheckOutContentWidget(),
        appBar: AppBar(
          leading: const BackButtonWidget(),
          title: CustomText(
            txt: Strings.checkout,
            fontSize: 20.sp,
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
