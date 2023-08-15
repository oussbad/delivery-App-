import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> signIn(String username, String email);
  Future<Either<Failure, User>> signUp(String email);
  Future<Either<Failure, Unit>> signOut();
}
