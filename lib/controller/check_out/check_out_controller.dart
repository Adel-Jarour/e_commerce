import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/data/models/checkout/delivery_model.dart';
import 'package:e_commerce/view/screens/check_out/step_widgets/address/address_widget.dart';
import 'package:e_commerce/view/screens/check_out/step_widgets/delivery/delivery_widget.dart';
import 'package:e_commerce/view/screens/check_out/step_widgets/summary/summary_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CheckOutController extends GetxController {
  int currentStepIndex = 0;

  void setStepIndex(int index) {
    currentStepIndex = index;
    update();
  }

  void nextStep() {
    if (currentStepIndex < 2) {
      currentStepIndex++;
      update();
    }
  }

  void backStep() {
    if (currentStepIndex != 0) {
      currentStepIndex--;
      update();
    }
  }

  List<Widget> screenBody = [
    DeliveryWidget(),
    AddressWidget(),
    SummaryWidget(),
  ];

  int? currentDeliveryIndex;

  void setDeliveryIndex(int index) {
    currentDeliveryIndex = index;
    update();
  }

  List<DeliveryModel> deliveryChoiceList = [
    DeliveryModel(
      index: 0,
      title: Strings.standardDeliveryCheckout,
      subTitle: Strings.orderDeliveredCheckout,
    ),
    DeliveryModel(
      index: 1,
      title: Strings.nextDayDeliveryCheckout,
      subTitle: Strings.placeYourOrderCheckout,
    ),
    DeliveryModel(
      index: 2,
      title: Strings.nominatedDeliveryCheckout,
      subTitle: Strings.pickParticularDateCheckout,
    ),
  ];
}
