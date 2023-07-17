
import 'package:e_commerce/view/screens/cart/cart/cart.dart';
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
}