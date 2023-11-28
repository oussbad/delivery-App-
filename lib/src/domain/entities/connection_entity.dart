import 'package:boxpend_flutter_android_app/src/domain/entities/user_entity.dart';

class Connection {
  final int? id;
  final String? role;
  final DateTime? createdAt;
  final User? owner;
  final User? user;

  const Connection({
    this.id,
    this.role,
    this.createdAt,
    this.owner,
    this.user,
  });
}
