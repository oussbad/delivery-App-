import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/data/datasource/template/template_remote_datasource_impl.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/template_entitiy.dart';
import 'package:boxpend_flutter_android_app/src/domain/repositories/template_repository.dart';
import 'package:dartz/dartz.dart';

class TemplateRepositoryImpl extends TemplateRepository {
  final TemplateRemoteDatasource datasource;

  TemplateRepositoryImpl({required this.datasource});
  @override
  Future<Either<Failure, Template>> getTemplate() async {
    try {
      final data = await datasource.getTemplate();
      return Right(data);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
