import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/services/local_storage_service_impl.dart';
import '../../../app/themes/app_themes.dart';

class SettingsController extends GetxController {
  static SettingsController get to => Get.find();
  final _darkThemeKey = 'isDarkTheme';
  LocalStorageServiceImpl localStorageService = LocalStorageServiceImpl();

  Future<void> SaveThemeData(bool isDarkMode) async {
    localStorageService.save(_darkThemeKey, isDarkMode);
  }

  bool isSavedDarkMode() {
    return localStorageService.get(_darkThemeKey) ?? false;
  }

  ThemeMode getThemeMode(){
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }
  void changeTheme(){
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light:ThemeMode.dark);
    SaveThemeData(!isSavedDarkMode());
  }
}
