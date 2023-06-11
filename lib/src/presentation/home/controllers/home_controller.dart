import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> navigationItems = [
    StringsManager.orders,
    StringsManager.statistics,
    StringsManager.notifications,
    StringsManager.connections,
  ];
  final RxInt currentIndex = 0.obs;

  void openDrawer() => scaffoldKey.currentState!.openDrawer();
  void changeScreen(int index) => currentIndex(index);
  void goToAddNewOrderPage() => Get.offAllNamed(AppRoutes.template);
}
