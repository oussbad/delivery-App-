import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/template_entitiy.dart';
import 'package:dartz/dartz.dart';

abstract class TemplateRepository {
  Future<Either<Failure, List<Template>>> getTemplates();
}
