import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/core/usecases/no_param_usecase.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/template_entitiy.dart';
import 'package:boxpend_flutter_android_app/src/domain/usecases/template/get_template_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

class TemplateController extends GetxController {
  TemplateController(this._getTemplateUsecase);

  static TemplateController get to => Get.find();

  final GetTemplateUsecase _getTemplateUsecase;

  final Rx<Either<Failure, Template>> template = Rx<Either<Failure, Template>>(
    Right(
      Template.init(),
    ),
  );

  @override
  void onInit() {
    loadTemplate();
    super.onInit();
  }

  Future<Either<Failure, Template>> loadTemplate() async {
    final result = await _getTemplateUsecase.call(NoParams());
    return template(result);
  }
}
