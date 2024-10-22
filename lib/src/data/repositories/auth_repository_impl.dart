import 'package:boxpend_flutter_android_app/src/app/utils/base.dart';
import 'package:boxpend_flutter_android_app/src/data/interfaces/auth_datasource.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/session_entity.dart';
import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/user_entity.dart';
import 'package:boxpend_flutter_android_app/src/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl extends BaseRespository implements AuthRepository {
  final AuthDatasource datasource;

  AuthRepositoryImpl({
    required this.datasource,
  });

  @override
  Future<Either<Failure, Session>> signUp(User user) async {
    return await performAuth(
      () async => await datasource.signUp(user),
    );
  }

  @override
  Future<Either<Failure, Session>> signIn(String email, String password) async {
    return await performAuth(
      () async => await datasource.signIn(email, password),
    );
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    return await performAuth(
      () async => await datasource.signOut(),
    );
  }
}
