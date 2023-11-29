import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/template_entity.dart';
import 'package:boxpend_flutter_android_app/src/domain/usecases/template/get_template_usecase.dart';
import 'package:get/get.dart';

class TemplateController extends GetxController {
  TemplateController(this._getTemplateUsecase);

  static TemplateController get to => Get.find();

  final GetTemplateUsecase _getTemplateUsecase;

  Rx<Template> template = Template.init().obs;
  final failure = ''.obs;
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    loadTemplate();
    super.onInit();
  }

  void loadTemplate() async {
    isLoading(true);
    final result = await _getTemplateUsecase.call();
    result.fold(
      (error) {
        isLoading(false);
        final errorMsg = _handleFailures(error);
        return failure(errorMsg);
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
