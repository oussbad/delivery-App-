import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/core/usecases/no_param_usecase.dart';
import 'package:boxpend_flutter_android_app/src/app/core/usecases/usecase.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/template_entitiy.dart';
import 'package:boxpend_flutter_android_app/src/domain/repositories/template_repository.dart';
import 'package:dartz/dartz.dart';

class GetTemplateUsecase implements Usecase<Template, NoParams> {
  final TemplateRepository _repository;

  GetTemplateUsecase(this._repository);

  @override
  Future<Either<Failure, Template>> call(NoParams params) async =>
      await _repository.getTemplate();
}
