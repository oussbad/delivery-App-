import 'package:boxpend_flutter_android_app/src/app/core/services/local_storage_service.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/constants_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  static SettingsController get to => Get.find();
  final LocalStorageService _localStorage = Get.find();

  final RxBool isDarkMode = true.obs;

  @override
  void onInit() {
    _loadTheme;
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
}
