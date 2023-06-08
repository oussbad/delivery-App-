import 'package:boxpend_flutter_android_app/src/presentation/auth/controllers/signup_controller.dart';
import 'package:get/get.dart';

class SignUpBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(
      () => SignUpController(),
    );
  }
}
