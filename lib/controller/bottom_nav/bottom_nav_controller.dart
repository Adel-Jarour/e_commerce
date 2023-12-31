import 'package:e_commerce/view/screens/cart/cart.dart';
import 'package:e_commerce/view/screens/home/home/home.dart';
import 'package:e_commerce/view/screens/account/account/account.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  int currentIndex = 0;

  void setIndex(int index) {
    currentIndex = index;
    update();
  }

  List<Widget> screens = [
    Home(),
    Cart(),
    Account(),
  ];

  int counter = 1;

  void addToCounter() {
    counter = counter + 1;
    update();
  }

  void miniToCounter() {
    if (counter != 1) {
      counter = counter - 1;
      update();
    }
  }
}
