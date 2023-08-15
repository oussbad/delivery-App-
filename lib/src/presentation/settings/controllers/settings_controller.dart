import 'package:boxpend_flutter_android_app/src/app/core/services/local_storage_service.dart';
import 'package:boxpend_flutter_android_app/src/app/localization/app_localization.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/constants_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum AppLang { ar, en, fr }

class SettingsController extends GetxController {
  static SettingsController get to => Get.find();
  final LocalStorageService _localStorage = Get.find();

  final RxBool isDarkMode = true.obs;
  final Rx<AppLang> lang = AppLang.en.obs;

  @override
  void onInit() {
    _loadTheme;
    _loadLang;

    super.onInit();
  }

  ThemeMode _setThemeMode(bool themeMode) =>
      themeMode ? ThemeMode.dark : ThemeMode.light;

  ThemeMode _loadTheme() {
    final stored = _localStorage.get(ConstantsManager.isDarkMode);
    if (GetUtils.isNullOrBlank(stored)!) {
      isDarkMode(isDarkMode.value);
    } else {
      isDarkMode(stored);
    }
    return _setThemeMode(isDarkMode.value);
  }

  void _saveTheme(bool isDarkMode) =>
      _localStorage.save(ConstantsManager.isDarkMode, isDarkMode);

  onThemeChanged(bool? selected) {
    isDarkMode(selected);
    _saveTheme(isDarkMode.value);
    return Get.changeThemeMode(_setThemeMode(isDarkMode.value));
  }

  AppLang _loadLang() {
    final stored = _localStorage.get(ConstantsManager.langCode);
    if (GetUtils.isNullOrBlank(stored)!) {
      return lang(lang.value);
    } else {
      return lang(stored);
    }
  }

  void _saveLang(AppLang lang) {
    _localStorage.save(ConstantsManager.langCode, lang);
  }

  void onLangChanged(AppLang? selectedLang) {
    lang(selectedLang);
    final locale = AppLocalization.supportedLanguages[selectedLang];
    if (locale != null) {
      Get.updateLocale(locale);
      _saveLang(selectedLang!);
    }
  }
}
