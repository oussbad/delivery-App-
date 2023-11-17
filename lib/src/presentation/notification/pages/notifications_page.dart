import 'package:boxpend_flutter_android_app/src/presentation/notification/controllers/notifications_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/notification/widgets/notification_alert_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsPage extends GetView<NotificationsController> {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: NotificationAlertWidget(
          notificationsState: "Notifications are Disabled",
          enableNotifications: () {},
        ),
      ),
    );
  }
}
