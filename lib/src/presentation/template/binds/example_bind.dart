import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/example_controller.dart';
import 'package:get/get.dart';

class ExampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExampleController>(
      () => ExampleController(),
    );
  }
}
