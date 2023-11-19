import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/state_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/notification/widgets/notification_alert_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/notification/widgets/notification_order_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/widgets/order_details_actions.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/widgets/order_item_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage extends GetView<TestController> {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.s16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NotificationOrderWidget(
              status: OrderStatus.delivered,
              orderId: '0003',
              date: DateTime.now(),
            ),
            GapWidget.s16(),
            NotificationOrderWidget(
              status: OrderStatus.returned,
              orderId: '0004',
              date: DateTime.now(),
            ),
          ],
        ),
      ),
    );
  }
}
