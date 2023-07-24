import 'dart:async';

import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:boxpend_flutter_android_app/src/app/services/local_storage_service.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();
  final LocalStorageService _localStorageService = Get.find();

  @override
  void onReady() {
    super.onReady();
    loadSplashScreen();
  }

  // check if user is logged in for the first time
  void checkFirstSeen() async {
    bool _seen = (_localStorageService.get('seen') ?? false);
    if (_seen) {
      Get.offAllNamed(AppRoutes.home);
    } else {
      _localStorageService.save('seen', true);

      Get.offAllNamed('/onboarding');
    }
  }

  Future<void> loadSplashScreen() async {
    Timer(const Duration(milliseconds: 5000), () {
      // check if user seen the onboarding screen
      // if yes, go to home page
      // if no, go to onboarding page

      checkFirstSeen();
    });
  }
}
