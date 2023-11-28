import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class ConnectionRepository {
  Future<Either<Failure, Unit>> getAll();
  Future<Either<Failure, Unit>> create();
  Future<Either<Failure, Unit>> remove();
}
