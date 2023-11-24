import 'dart:async';

import 'package:boxpend_flutter_android_app/src/app/core/services/local_storage_service.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/constants_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();
  final LocalStorageService _localStorage = Get.find();

  @override
  void onReady() {
    super.onReady();
    loadSplashScreen();
  }

  void checkFirstSeen() async {
    final isFirstTimeUser = _localStorage.get(
      ConstantsManager.isFirstTimeUser,
    );

    if (GetUtils.isNull(isFirstTimeUser)) {
      _localStorage.save(
        ConstantsManager.isFirstTimeUser,
        true,
      );
      Get.offAllNamed(AppRoutes.onBoarding);
    } else {
      Get.offAllNamed(AppRoutes.signIn);
    }
  }

  Future<void> loadSplashScreen() async {
    Timer(
      const Duration(milliseconds: 5000),
      () => checkFirstSeen(),
    );
  }
}
