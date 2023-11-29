import 'package:boxpend_flutter_android_app/src/app/core/services/api_service.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/constants_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/utils/base.dart';
import 'package:boxpend_flutter_android_app/src/data/interfaces/auth_datasource.dart';
import 'package:boxpend_flutter_android_app/src/data/models/session_model.dart';

class AuthDatasourceImpl implements AuthDatasource {
  final ApiService api;

  AuthDatasourceImpl({required this.api});

  @override
  Future<SessionModel> signIn(String email, String password) async {
    return await onPerformAuth(
      () async {
        final result = await api.post(
          ConstantsManager.signInEndpoint,
          {
            "email": email,
            "password": password,
          },
        );
        final data = SessionModel.fromJson(result.body);
        return data;
      },
    );
  }
}
