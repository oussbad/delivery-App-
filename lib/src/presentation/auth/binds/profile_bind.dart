import 'package:boxpend_flutter_android_app/src/presentation/auth/controllers/profile_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/controllers/signin_controller.dart';
import 'package:get/get.dart';

class ProfileBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
