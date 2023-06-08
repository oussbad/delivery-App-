import 'dart:async';

import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();

  @override
  void onReady() {
    super.onReady();
    loadSplashScreen();
  }

  Future<void> loadSplashScreen() async {
    Timer(
      const Duration(milliseconds: 5000),
      () => Get.offAllNamed('/template'),
    );
  }
}
