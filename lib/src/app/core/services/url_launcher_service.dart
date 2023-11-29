import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

abstract class URLLauncherService extends GetxService {
  Future<Either<Failure, bool>> launch(String url);
}
