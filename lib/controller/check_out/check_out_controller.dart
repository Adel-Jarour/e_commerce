import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/data/models/checkout/delivery_model.dart';
import 'package:e_commerce/view/components/custom_snakbar.dart';
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

  final formKey = GlobalKey<FormState>();


  void nextStep() {
    if (currentStepIndex == 0) {
      if (currentDeliveryIndex != null) {
        currentStepIndex++;
      } else {
        CustomSnackBar.showCustomErrorToast(
            message: "You must choose one one the options");
      }
    }
    else if (currentStepIndex == 1) {
      if (formKey.currentState!.validate()) {
        currentStepIndex++;
      }
    }
    update();
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

  late TextEditingController street1;
  late TextEditingController street2;
  late TextEditingController city;
  late TextEditingController state;
  late TextEditingController country;

  late FocusNode street1FocusNode;
  late FocusNode street2FocusNode;
  late FocusNode cityFocusNode;
  late FocusNode stateFocusNode;
  late FocusNode countryFocusNode;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    street1 = TextEditingController();
    street2 = TextEditingController();
    city = TextEditingController();
    state = TextEditingController();
    country = TextEditingController();

    street1FocusNode = FocusNode();
    street2FocusNode = FocusNode();
    cityFocusNode = FocusNode();
    stateFocusNode = FocusNode();
    countryFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    street1.dispose();
    street2.dispose();
    city.dispose();
    state.dispose();
    country.dispose();

    street1FocusNode.dispose();
    street2FocusNode.dispose();
    cityFocusNode.dispose();
    stateFocusNode.dispose();
    countryFocusNode.dispose();
  }
}
