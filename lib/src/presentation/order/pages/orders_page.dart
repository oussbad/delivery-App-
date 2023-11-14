import 'package:boxpend_flutter_android_app/src/presentation/order/controllers/orders_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsPage extends GetView<OrdersController> {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Orders Page'),
      ),
    );
  }
}
