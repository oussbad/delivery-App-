import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:boxpend_flutter_android_app/src/app/services/local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get to => Get.find();
  final LocalStorageService _localStorageService = Get.find();

  final RxInt index = 1.obs;
  final int itemCount = 2;
  final PageController pageController = PageController(
    initialPage: 1,
  );
  void onSkip() {
    _localStorageService.save('step', '1');
    Get.offAllNamed(AppRoutes.home);
  }

  void onPageChanged(int page) {
    index(page);
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    update();
  }

  void goToHomePage() => Get.offAllNamed(AppRoutes.home);
}
