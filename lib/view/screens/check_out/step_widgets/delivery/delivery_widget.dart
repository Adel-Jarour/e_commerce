import 'package:e_commerce/controller/check_out/check_out_controller.dart';
import 'package:e_commerce/view/screens/check_out/step_widgets/delivery/widget/custom_delivery_choice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeliveryWidget extends StatelessWidget {
  const DeliveryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckOutController>(
      builder: (controller) => Column(
        children: controller.deliveryChoiceList.map((e) {
          return CustomDeliveryChoice(
            title: e.title,
            subTitle: e.subTitle,
            index: e.index,
            onTap: () {
              controller.setDeliveryIndex(e.index);
            },
          );
        }).toList(),
      ),
    );
  }
}
