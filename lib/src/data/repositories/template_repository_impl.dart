import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/template_entitiy.dart';
import 'package:boxpend_flutter_android_app/src/domain/repositories/template_repository.dart';
import 'package:dartz/dartz.dart';

class TemplateRepositoryImpl extends TemplateRepository {
  @override
  Future<Either<Failure, List<Template>>> getTemplates() {
    throw UnimplementedError();
  }
}
