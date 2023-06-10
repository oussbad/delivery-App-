import 'package:boxpend_flutter_android_app/src/presentation/auth/controllers/signin_controller.dart';
import 'package:get/get.dart';

class SignInBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(
      () => SignInController(),
    );
  }
}
