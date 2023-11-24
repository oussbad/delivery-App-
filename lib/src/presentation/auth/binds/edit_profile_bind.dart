import 'package:boxpend_flutter_android_app/src/presentation/auth/controllers/edit_profile_controller.dart';
import 'package:get/get.dart';

class EditProfileBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditProfileController>(
      () => EditProfileController(),
    );
  }
}
