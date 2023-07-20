import 'package:boxpend_flutter_android_app/src/app/core/usecases/no_param_usecase.dart';
import 'package:boxpend_flutter_android_app/src/domain/usecases/template/get_template_usecase.dart';
import 'package:get/get.dart';

class TemplateController extends GetxController {
  TemplateController(this._getTemplateUsecase);

  static TemplateController get to => Get.find();

  final GetTemplateUsecase _getTemplateUsecase;

  @override
  void onInit() {
    loadTemplate;
    super.onInit();
  }

  void loadTemplate() {
    _getTemplateUsecase.call(NoParams());
  }
}
