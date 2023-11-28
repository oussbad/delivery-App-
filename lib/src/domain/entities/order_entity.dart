import 'package:boxpend_flutter_android_app/src/domain/entities/user_entity.dart';

class Order {
  final int? id;
  final String? status;
  final double? price;
  final String? currency;
  final String? phoneNumber1;
  final String? phoneNumber2;
  final String? receiverName;
  final String? notes;
  final String? address;
  final String? mapsLink;
  final bool? canOpenBeforePayment;
  final DateTime? createdAt;
  final DateTime? deliveredAt;
  final DateTime? closedAt;
  final User? provider;
  final User? assignee;

  const Order({
    this.id,
    this.status,
    this.price,
    this.currency,
    this.phoneNumber1,
    this.phoneNumber2,
    this.receiverName,
    this.notes,
    this.address,
    this.mapsLink,
    this.canOpenBeforePayment,
    this.createdAt,
    this.deliveredAt,
    this.closedAt,
    this.provider,
    this.assignee,
  });
}
