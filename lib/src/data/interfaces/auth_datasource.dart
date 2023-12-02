import 'package:boxpend_flutter_android_app/src/data/models/session_model.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/user_entity.dart';

abstract class AuthDatasource {
  Future<SessionModel> signIn(String email, String password);
  Future<SessionModel> signUp(User user);
  Future<void> signOut();
}
