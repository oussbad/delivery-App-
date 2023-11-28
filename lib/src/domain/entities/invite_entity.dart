import 'package:boxpend_flutter_android_app/src/domain/entities/user_entity.dart';

class Invite {
  final int? id;
  final String? status;
  final double? email;
  final bool? revoked;
  final DateTime? createdAt;
  final User? user;

  const Invite({
    this.id,
    this.status,
    this.email,
    this.revoked,
    this.createdAt,
    this.user,
  });
}
