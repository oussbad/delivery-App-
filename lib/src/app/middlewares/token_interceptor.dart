import 'package:boxpend_flutter_android_app/src/app/core/services/token_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class TokenInterceptor extends Interceptor {
  final tokenStorage = Get.find<TokenService>();

  TokenInterceptor();

  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await tokenStorage.getToken();
    options.headers.addAll({'Authorization': 'Bearer $accessToken'});
    return handler.next(options);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }
}
