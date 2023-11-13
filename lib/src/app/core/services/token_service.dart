import 'package:get/get.dart';

abstract class TokenService extends GetxService {
  Future<String?> getToken();
  Future<void> setToken(String token);
  Future<void> removeToken();
}
