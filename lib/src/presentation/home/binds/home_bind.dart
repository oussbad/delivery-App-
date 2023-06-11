import 'package:boxpend_flutter_android_app/src/presentation/home/controllers/sidebar_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<SidebarController>(
      () => SidebarController(),
    );
  }
}
