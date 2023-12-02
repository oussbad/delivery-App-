import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/core/usecases/usecase.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/session_entity.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/user_entity.dart';
import 'package:boxpend_flutter_android_app/src/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class SignUpUsecase implements Usecase<Session, User> {
  final AuthRepository _repository;

  SignUpUsecase(this._repository);

  @override
  Future<Either<Failure, Session>> call(
    user,
  ) async =>
      await _repository.signUp(user);
}
