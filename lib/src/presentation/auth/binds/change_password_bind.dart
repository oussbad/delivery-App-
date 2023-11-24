import 'package:boxpend_flutter_android_app/src/presentation/auth/controllers/change_password_controller.dart';
import 'package:get/get.dart';

class ChangePasswordBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangePasswordController>(
      () => ChangePasswordController(),
    );
  }
}
