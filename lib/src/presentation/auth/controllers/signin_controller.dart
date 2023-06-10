import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get to => Get.find();

  void goToSignUpPage() => Get.offAllNamed(AppRoutes.signUp);
}
