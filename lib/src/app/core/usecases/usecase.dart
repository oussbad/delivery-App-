import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class UsecaseNoParams<Type> {
  Future<Either<Failure, Type>> call();
}

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class UsecaseTwoParams<Type, Param1, Param2> {
  Future<Either<Failure, Type>> call(Param1 param1, Param2 param2);
}
