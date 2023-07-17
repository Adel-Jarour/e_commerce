import 'package:e_commerce/view/screens/auth/login/login_screen.dart';
import 'package:e_commerce/view/screens/auth/register/register_screen.dart';
import 'package:e_commerce/view/screens/auth/splash/splash_screen.dart';
import 'package:get/get.dart';
import 'app_routes.dart';



class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: Routes.register,
      page: () => RegisterScreen(),
      transition: Transition.leftToRight,
    ),
  ];
}
