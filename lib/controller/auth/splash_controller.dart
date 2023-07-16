import 'package:e_commerce/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  Future<void> splash() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(Routes.login);
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    splash();
  }
}
