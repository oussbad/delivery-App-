import 'package:boxpend_flutter_android_app/src/app/core/services/token_service.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/constants_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenServiceImpl extends TokenService {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  @override
  Future<String?> getToken() async => await _secureStorage.read(
        key: ConstantsManager.token,
      );

  @override
  Future<void> setToken(String token) async => await _secureStorage.write(
        key: ConstantsManager.token,
        value: token,
      );

  @override
  Future<void> removeToken() async => await _secureStorage.delete(
        key: ConstantsManager.token,
      );
}
