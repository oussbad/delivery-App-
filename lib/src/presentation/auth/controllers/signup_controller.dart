import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:get/get.dart';

enum UserType { provider, delivery }

class SignUpController extends GetxController {
  static SignUpController get to => Get.find();

  final Rx<UserType> userType = UserType.provider.obs;

  void onUserTypeChanged(UserType? value) => userType(value);

  void goToTermsAndConditionsPage() => Get.offAllNamed(AppRoutes.template);

  void goToPolicyPrivacyPage() => Get.offAllNamed(AppRoutes.template);

  void goToSignInPage() => Get.offAllNamed(AppRoutes.signIn);
}
