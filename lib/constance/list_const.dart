
import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/images_const.dart';
import 'package:e_commerce/data/models/checkout/delivery_model.dart';

class ListConst {

  static List<String> categoriesImages = [
    ImagesConst.menHome,
    ImagesConst.womenHome,
    ImagesConst.devicesHome,
    ImagesConst.gadgetsHome,
    ImagesConst.gamingHome,
  ];

  static List<String> categoriesTitles = [
    Strings.menHome,
    Strings.womenHome,
    Strings.devicesHome,
    Strings.gadgetsHome,
    Strings.gamingHome,
  ];

  static List<String> bestSellingImages = [
    ImagesConst.speakerHome,
    ImagesConst.watchHome,
    ImagesConst.deskLampHome,
    ImagesConst.standSpeakerHome,
    ImagesConst.phoneCaseHome,
    ImagesConst.speakerHome,
    ImagesConst.watchHome,
    ImagesConst.speakerHome,
  ];

  static List<String> bestSellingTitles = [
    'BeoPlay Speaker',
    'Leather Wristwatch',
    'B&o Desk Lamp',
    'BeoPlay Stand Speaker',
    'B&o Phone Case',
    'BeoPlay Speaker',
    'Leather Wristwatch',
    'BeoPlay Speaker',
  ];

  static List<bool> newDevices = [
    false,
    false,
    true,
    true,
    false,
    true,
    false,
    false,
  ];


  static List<String> cartImages = [
    ImagesConst.wristWatchCart,
    ImagesConst.speakerHome,
    ImagesConst.electricKettleCart,
    ImagesConst.phoneCaseHome,
    ImagesConst.speakerHome,
    ImagesConst.electricKettleCart,
  ];

  static List<String> cartTitles = [
    'Tag Heuer Wristwatch',
    'BeoPlay Speaker',
    'Electric Kettle',
    'Tag Heuer Wristwatch',
    'BeoPlay Speaker',
    'Electric Kettle',
  ];
}