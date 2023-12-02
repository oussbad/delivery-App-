import 'package:boxpend_flutter_android_app/src/domain/entities/session_entity.dart';

class SessionModel extends Session {
  SessionModel({
    required super.token,
  });

  factory SessionModel.fromJson(Map<String, dynamic> json) => SessionModel(
        token: json["access_token"],
      );
}
