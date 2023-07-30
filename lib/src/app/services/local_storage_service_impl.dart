import 'package:boxpend_flutter_android_app/src/app/core/services/local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class LocalStorageServiceImpl extends LocalStorageService {
  final GetStorage _box = GetStorage();
  final _getStorage = GetStorage();
  final _darkThemeKey = 'isDarkTheme';

  Future<dynamic> init() async {
    return _box.initStorage;
  }

  Future<dynamic> initDarkTheme() async {
    return _getStorage.initStorage;
  }

  @override
  Future<void> save(String key, dynamic value) {
    return _box.writeIfNull(key, value);
  }

  @override
  dynamic get(String key) {
    return _box.read(key);
  }

  @override
  Future<void> remove(String key) {
    return _box.remove(key);
  }
  @override
  Future<void> saveThemeData(bool isDarkMode) async {
    _getStorage.write(_darkThemeKey, isDarkMode);
  }

  bool isSavedDarkMode(){
    return _getStorage.read(_darkThemeKey)?? false;
  }
  ThemeMode getThemeMode(){
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }
}
