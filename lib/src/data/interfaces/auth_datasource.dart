import 'package:boxpend_flutter_android_app/src/data/models/session_model.dart';

abstract class AuthDatasource {
  Future<SessionModel> signIn(String email, String password);
}
