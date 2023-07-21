import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  bool isFavorite = false;
  bool isAdded = false;
  String selectedSize = 'S';
  String ss = '';

  void changeFavorite() {
    isFavorite = !isFavorite;
    update();
  }

  final List<String> sizeOptions = ['S', 'M', 'L', 'XL', '2XL', '3XL'];


  Future addToCart() async {
    if (!isAdded) {
      isAdded = true;
      update();
      await Future.delayed(const Duration(seconds: 2));
      isAdded = false;
      update();
    }
  }
}
