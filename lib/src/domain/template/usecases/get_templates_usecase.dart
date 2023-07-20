import 'package:boxpend_flutter_android_app/src/app/core/usecases/no_param_usecase.dart';
import 'package:boxpend_flutter_android_app/src/app/core/usecases/usecase.dart';
import 'package:boxpend_flutter_android_app/src/domain/template/entities/template_entitiy.dart';
import 'package:boxpend_flutter_android_app/src/domain/template/repositories/template_repository.dart';

class GetTemplatesUsecase extends Usecase<List<Template>, NoParams> {
  final TemplateRepository repository;

  GetTemplatesUsecase({
    required this.repository,
  });

  @override
  Future<List<Template>> call(NoParams params) async =>
      await repository.getTemplates();
}
