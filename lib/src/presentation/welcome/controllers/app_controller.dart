import 'package:boxpend_flutter_android_app/src/app/core/services/local_storage_service.dart';
import 'package:boxpend_flutter_android_app/src/app/localization/app_localization.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/constants_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  static AppController get to => Get.find();
  final LocalStorageService _localStorage = Get.find();

  ThemeMode themeMode = ThemeMode.system;

  @override
  void onInit() {
    loadThemeMode;
    loadLang;

    super.onInit();
  }

  ThemeMode _setThemeMode(bool isDarkTheme) =>
      isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  ThemeMode loadThemeMode() {
    final isDarkMode = _localStorage.get(ConstantsManager.isDarkMode);
    if (GetUtils.isNullOrBlank(isDarkMode)!) {
      return themeMode = ThemeMode.system;
    } else {
      return _setThemeMode(isDarkMode as bool);
    }
  }

  Locale loadLang() {
    final stored = _localStorage.get(ConstantsManager.langCode);
    if (!GetUtils.isNullOrBlank(stored)!) {
      final locale = AppLocalization.supportedLanguages[stored];
      return locale!;
    } else {
      return AppLocalization.defaultLanguage;
    }
  }
}
