import 'package:boxpend_flutter_android_app/src/domain/entities/user_entity.dart';

class UserModel extends User {
  UserModel({
    super.name,
    super.role,
    super.email,
    super.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        role: json["role"],
        email: json["email"],
        password: json["password"],
      );
}
