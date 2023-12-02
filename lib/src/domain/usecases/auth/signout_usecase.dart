import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/core/usecases/usecase.dart';
import 'package:boxpend_flutter_android_app/src/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class SignOutUsecase implements UsecaseNoParams<Unit> {
  final AuthRepository _repository;

  SignOutUsecase(this._repository);

  @override
  Future<Either<Failure, Unit>> call() async => await _repository.signOut();
}
