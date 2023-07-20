import 'package:boxpend_flutter_android_app/src/domain/usecases/template/get_template_usecase.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/template_controller.dart';
import 'package:get/get.dart';

class TemplateBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetTemplateUsecase>(() => GetTemplateUsecase(Get.find()));
    Get.lazyPut<TemplateController>(() => TemplateController(Get.find()));
  }
}
