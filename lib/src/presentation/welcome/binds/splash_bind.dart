import 'package:boxpend_flutter_android_app/src/presentation/welcome/controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
  }
}
