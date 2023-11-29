import 'package:boxpend_flutter_android_app/src/app/core/error/exceptions.dart';
import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/core/services/network_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

dynamic onPerformAuth(Function future) async {
  try {
    return await future();
  } on DioException catch (e) {
    if (e.response!.statusCode == 400) {
      throw AuthException();
    } else {
      throw ServerException();
    }
  }
}

class BaseRespository {
  final netwrok = Get.find<NetworkService>();

  Future<Either<Failure, T>> performAuth<T>(Function future) async {
    final isConnected = await netwrok.isConnected();
    if (isConnected) {
      try {
        return Right(await future());
      } on ServerException {
        return Left(ServerFailure());
      } on AuthException {
        return Left(AuthFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
