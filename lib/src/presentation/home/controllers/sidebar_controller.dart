import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SidebarController extends GetxController {
  static SidebarController get to => Get.find();

  final String avatar = '/avatar';
  final String username = 'Jhon Doe';
  final String email = 'jhon.doe@gmail.com';
  final RxBool isDarkMode = false.obs;

  void goToEditProfilePage() => Get.offAllNamed(AppRoutes.template);

  void onDarkModeChanged(bool value) => isDarkMode(!isDarkMode.value);

  void goToSettingsPage() => Get.offAllNamed(AppRoutes.template);

  void goToAboutPage() => Get.offAllNamed(AppRoutes.template);

  void goToTermsAndConditionsPage() => Get.offAllNamed(AppRoutes.terms);

  void goToPolicyPrivacyPage() => Get.offAllNamed(AppRoutes.policy);

  void signout() => Get.offAllNamed(AppRoutes.template);
}
