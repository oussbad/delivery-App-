import 'package:boxpend_flutter_android_app/src/presentation/welcome/controllers/app_controller.dart';
import 'package:get/get.dart';

class AppBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(() => AppController());
  }
}
