import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
