import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  bool isFavorite = false;
  bool isAdded = false;
  String selectedSize = 'L';

  String detailDesc =
      "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.\n" *
          10;

  void changeSelectedValue(String? value) {
    selectedSize = value!;
    update();
  }

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
