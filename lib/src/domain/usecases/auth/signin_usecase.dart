import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/core/usecases/usecase.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/session_entity.dart';
import 'package:boxpend_flutter_android_app/src/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class SignInUsecase implements UsecaseTwoParams<Session, String, String> {
  final AuthRepository _repository;

  SignInUsecase(this._repository);

  @override
  Future<Either<Failure, Session>> call(
    email,
    password,
  ) async =>
      await _repository.signIn(
        email,
        password,
      );
}
