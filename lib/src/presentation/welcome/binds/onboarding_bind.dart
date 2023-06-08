import 'package:boxpend_flutter_android_app/src/presentation/welcome/controllers/onboarding_controller.dart';
import 'package:get/get.dart';

class OnBoardingBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingController>(
      () => OnBoardingController(),
    );
  }
}
