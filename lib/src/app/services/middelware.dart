import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'local_storage_service.dart';

class MiddelWare extends GetMiddleware {
  @override
  int? get priority => 1;

  final LocalStorageService _localStorageService =
      Get.find<LocalStorageService>();

  @override
  RouteSettings? redirect(String? route) {
    if (_localStorageService.get('step') == '1') {
      return const RouteSettings(name: AppRoutes.home);
    }
    return null;
  }
}
