import 'package:boxpend_flutter_android_app/src/app/core/services/api_service.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/constants_manager.dart';
import 'package:dio/dio.dart';

class DioServiceImpl extends ApiService {
  DioServiceImpl(this._dio) {
    _dio.options = BaseOptions(
      baseUrl: ConstantsManager.baseUrl,
      //  connectTimeout: ConstantsManager.connectTimeout,
      // receiveTimeout: ConstantsManager.receiveTimeout,
      // sendTimeout: ConstantsManager.sendTimeout,
      headers: {
        // "Content-Type": "application/json",
        "apikey": ConstantsManager.apiKey,
      },
      contentType: "application/json",
      responseType: ResponseType.json,
    );
  }

  final Dio _dio;

  @override
  Future<ApiResponse> get(
    String endpoint, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
  }) async {
    final response = await _dio.get(
      endpoint,
      queryParameters: query,
      options: Options(
        headers: headers,
      ),
    );
    return _dioToApiresponse(response);
  }

  @override
  Future<ApiResponse> post(
    String endpoint, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
  }) async {
    final response = await _dio.post(
      endpoint,
      data: data,
      options: Options(
        headers: headers,
      ),
    );
    return _dioToApiresponse(response);
  }

  @override
  Future<ApiResponse> update(
    String endpoint, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
  }) async {
    final response = await _dio.put(
      endpoint,
      data: data,
      options: Options(
        headers: headers,
      ),
    );
    return _dioToApiresponse(response);
  }

  @override
  Future<ApiResponse> delete(
    String endpoint, {
    Map<String, dynamic>? headers,
  }) async {
    final response = await _dio.delete(
      endpoint,
      options: Options(
        headers: headers,
      ),
    );
    return _dioToApiresponse(response);
  }

  ApiResponse _dioToApiresponse(Response response) => ApiResponse(
        response.data,
        response.statusCode,
        response.statusMessage,
      );
}
