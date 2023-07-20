import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/core/usecases/no_param_usecase.dart';
import 'package:boxpend_flutter_android_app/src/app/core/usecases/usecase.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/template_entitiy.dart';
import 'package:boxpend_flutter_android_app/src/domain/repositories/template_repository.dart';
import 'package:dartz/dartz.dart';

class GetTemplatesUsecase extends Usecase<List<Template>, NoParams> {
  final TemplateRepository repository;

  GetTemplatesUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, List<Template>>> call(NoParams params) async =>
      await repository.getTemplates();
}
