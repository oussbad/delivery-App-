import 'package:boxpend_flutter_android_app/src/domain/entities/user_entity.dart';

class Notification {
  final int? id;
  final String? type;
  final double? title;
  final String? message;
  final String? targetId;
  final bool? read;
  final DateTime? createdAt;
  final User? user;

  const Notification({
    this.id,
    this.type,
    this.title,
    this.message,
    this.targetId,
    this.read,
    this.createdAt,
    this.user,
  });
}
