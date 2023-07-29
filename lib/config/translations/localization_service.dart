import 'package:e_commerce/data/local/my_shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ar_AR/ar_ar_translation.dart';
import 'en_US/en_us_translation.dart';

class LocalizationService extends Translations {
  LocalizationService._();

  static LocalizationService? _instance;

  static LocalizationService getInstance() {
    _instance ??= LocalizationService._();
    return _instance!;
  }

  static Locale defaultLanguage = supportedLanguages['en']!;

  static Map<String,Locale> supportedLanguages = {
    'en' : const Locale('en', 'US'),
    'ar' : const Locale('ar', 'AR'),
  };

  static Map<String,TextStyle> supportedLanguagesFontsFamilies = {
    'en' : const TextStyle(fontFamily: 'Rubik'),
    'ar': const TextStyle(fontFamily: 'Cairo'),
  };

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUs,
    'ar_AR': arAR,
  };

  static isLanguageSupported(String languageCode) =>
    supportedLanguages.keys.contains(languageCode);


  static updateLanguage(String languageCode) async {
    if(!isLanguageSupported(languageCode)) return;
    await MySharedPref.setCurrentLanguage(languageCode);
    if(!Get.testMode) {
      Get.updateLocale(supportedLanguages[languageCode]!);
    }
  }

  static bool isItEnglish() =>
      MySharedPref.getCurrentLocal().languageCode.toLowerCase().contains('en');

  static bool isItArabic() =>
      MySharedPref.getCurrentLocal().languageCode.toLowerCase().contains('ar');

  static Locale getCurrentLocal () => MySharedPref.getCurrentLocal();
}

