import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/session_entity.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, Session>> signIn(String email, String password);
  Future<Either<Failure, Session>> signUp(User user);
  Future<Either<Failure, Unit>> signOut();
}
