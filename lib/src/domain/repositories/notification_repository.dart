import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class NotificationRepository {
  Future<Either<Failure, Unit>> getAll();
}
