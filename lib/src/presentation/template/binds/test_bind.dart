import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/test_controller.dart';
import 'package:get/get.dart';

class TestBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestController>(
      () => TestController(),
    );
  }
}
