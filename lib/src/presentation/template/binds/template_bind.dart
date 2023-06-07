import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/template_controller.dart';
import 'package:get/get.dart';

class TemplateBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TemplateController>(
      () => TemplateController(),
    );
  }
}
