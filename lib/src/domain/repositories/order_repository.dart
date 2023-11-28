import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class OrderRepository {
  Future<Either<Failure, Unit>> getAll();
  Future<Either<Failure, Unit>> getOne();
  Future<Either<Failure, Unit>> create();
  Future<Either<Failure, Unit>> update();
  Future<Either<Failure, Unit>> remove();
  Future<Either<Failure, Unit>> changeOrderStatus();
}
