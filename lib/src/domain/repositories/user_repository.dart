import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class TemplateRepository {
  Future<Either<Failure, User>> getUser();
  Future<Either<Failure, User>> updateProfile(String id);
}
