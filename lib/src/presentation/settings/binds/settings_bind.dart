import 'package:boxpend_flutter_android_app/src/presentation/Settings/controllers/settings_controller.dart';
import 'package:get/get.dart';

class SettingsBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    );
  }
}
