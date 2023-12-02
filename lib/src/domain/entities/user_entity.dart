import 'package:boxpend_flutter_android_app/src/domain/entities/connection_entity.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/invite_entity.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/notification_entity.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/order_entity.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/session_entity.dart';

class User {
  final int? id;
  final String? status;
  final String? name;
  final String? email;
  final String? password;
  final String? image;
  final String? phoneNumber;
  final String? businessName;
  final String? role;
  final String? notificationToken;
  final DateTime? emailVerified;
  final Session? session;
  final List<Order>? orders;
  final List<Notification>? notifications;
  final List<Invite>? invites;
  final List<Order>? assigned;
  final List<Connection>? connections;

  const User({
    this.id,
    this.status,
    this.name,
    this.password,
    this.email,
    this.image,
    this.phoneNumber,
    this.businessName,
    this.role,
    this.notificationToken,
    this.emailVerified,
    this.session,
    this.orders,
    this.notifications,
    this.invites,
    this.assigned,
    this.connections,
  });
}
