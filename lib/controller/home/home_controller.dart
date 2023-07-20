
import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/images_const.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  List<String> categoriesImages = [
    ImagesConst.menHome,
    ImagesConst.womenHome,
    ImagesConst.devicesHome,
    ImagesConst.gadgetsHome,
    ImagesConst.gamingHome,
  ];
  List<String> categoriesTitles = [
    Strings.menHome,
    Strings.womenHome,
    Strings.devicesHome,
    Strings.gadgetsHome,
    Strings.gamingHome,
  ];

  List<String> bestSellingImages = [
    ImagesConst.speakerHome,
    ImagesConst.watchHome,
    ImagesConst.speakerHome,
    ImagesConst.watchHome,
    ImagesConst.speakerHome,
    ImagesConst.watchHome,

  ];

  List<String> bestSellingTitles = [
    'BeoPlay Speaker',
    'Leather Wristwatch',
    'BeoPlay Speaker',
    'Leather Wristwatch',
    'BeoPlay Speaker',
    'Leather Wristwatch',
  ];
}