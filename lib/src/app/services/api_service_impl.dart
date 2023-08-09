import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/core/services/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ApiServiceImpl extends ApiService {
  final Dio _dio;
  ApiServiceImpl(this._dio);

  @override
  Future<Either<Failure, dynamic>> get(String url,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(url, queryParameters: queryParameters);
      return Right(response.data) ;
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, dynamic>> post(String url, {data}) async {
    try {
      final response = await _dio.post(url, data: data);
      return Right(response.data);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, dynamic>> update(String url, {data}) async {
    try {
      final response = await _dio.put(url, data: data);
      return Right(response.data);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, dynamic>> delete(String url) async {
    try {
      final response = await _dio.delete(url);
      return Right(response.data);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
