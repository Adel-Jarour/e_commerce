import 'package:e_commerce/config/translations/localization_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPref {
  MySharedPref._();

  static late SharedPreferences _sharedPreferences;

  static const String _currentLocalKey = 'en';

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static setStorage(SharedPreferences sharedPreferences) {
    _sharedPreferences = sharedPreferences;
  }

  static Future<void> setCurrentLanguage(String languageCode) =>
      _sharedPreferences.setString(_currentLocalKey, languageCode);

  static Locale getCurrentLocal() {
    String? langCode = _sharedPreferences.getString(_currentLocalKey);
    if (langCode == null) {
      return LocalizationService.defaultLanguage;
    }
    return LocalizationService.supportedLanguages[langCode]!;
  }

  static Future<bool> setLoggIn(bool login) async =>
      await _sharedPreferences.setBool("login", login);

  static bool? isLoggedIn() => _sharedPreferences.getBool("login");

  static Future<void> clear() async => await _sharedPreferences.clear();
}
