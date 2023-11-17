import 'package:boxpend_flutter_android_app/src/app/core/error/exceptions.dart';
import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/core/services/network_service.dart';
import 'package:boxpend_flutter_android_app/src/data/datasource/template/template_remote_datasource.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/template_entity.dart';
import 'package:boxpend_flutter_android_app/src/domain/repositories/template_repository.dart';
import 'package:dartz/dartz.dart';

class TemplateRepositoryImpl implements TemplateRepository {
  final TemplateRemoteDatasource datasource;
  final NetworkService netwrok;

  TemplateRepositoryImpl({
    required this.datasource,
    required this.netwrok,
  });

  @override
  Future<Either<Failure, Template>> getTemplate() async {
    final isConnected = await netwrok.isConnected();
    if (isConnected) {
      try {
        final data = await datasource.getTemplate();
        return Right(data);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
