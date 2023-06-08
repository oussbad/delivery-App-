import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get to => Get.find();

  final RxInt index = 0.obs;
  final int itemCount = 2;
  final PageController pageController = PageController(
    initialPage: 0,
  );

  void onPageChanged(int page) {
    index(page);
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    update();
  }

  void goToHomePage() => Get.offAllNamed(AppRoutes.template);
}
