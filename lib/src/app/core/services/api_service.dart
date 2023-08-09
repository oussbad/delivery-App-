import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

import '../error/failures.dart';

abstract class ApiService extends GetxService {
  Future<Either<Failure, dynamic>> get(String url,
      {Map<String, dynamic> queryParameters});
  Future<Either<Failure, dynamic>> post(String url, {dynamic data});
  Future<Either<Failure, dynamic>> update(String url, {dynamic data});
  Future<Either<Failure, dynamic>> delete(String url);
}
