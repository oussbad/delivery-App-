import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/core/usecases/no_param_usecase.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/template_entitiy.dart';
import 'package:boxpend_flutter_android_app/src/domain/usecases/template/get_template_usecase.dart';
import 'package:get/get.dart';

class TemplateController extends GetxController {
  TemplateController(this._getTemplateUsecase);

  static TemplateController get to => Get.find();

  final GetTemplateUsecase _getTemplateUsecase;

  final Rx<Template> template = Template.init().obs;
  final Rx<String> error = ''.obs;
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    loadTemplate();
    super.onInit();
  }

  void loadTemplate() async {
    isLoading(true);
    final result = await _getTemplateUsecase.call(NoParams());
    result.fold(
      (failure) {
        isLoading(false);
        final errorMsg = _handleFailures(failure);
        return error(errorMsg);
      },
      (data) {
        isLoading(false);
        return template(data);
      },
    );
  }

  String _handleFailures(Failure failure) {
    if (failure is NetworkFailure) {
      return StringsManager.networkError;
    } else if (failure is ServerFailure) {
      return StringsManager.templateLoadedError;
    } else {
      return StringsManager.unexpectedError;
    }
  }
}
