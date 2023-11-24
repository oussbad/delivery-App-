import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/app_bar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/avatar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/header_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/notification/controllers/notifications_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/notification/widgets/notification_alert_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/notification/widgets/notification_connection_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/notification/widgets/notification_order_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum NotificationType { order, connection }

class NotificationsPage extends GetView<NotificationsController> {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppPalette.bg4,
        child: Column(
          children: [
            const AppBarWidget(
              withCloseButton: true,
              withLogo: false,
            ),
            const HeaderWidget(
              title: StringsManager.notifications,
              actions: [],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.s16),
              child: NotificationAlertWidget(
                onEnabled: () {},
              ),
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 20,
                padding: EdgeInsets.all(AppSpacing.s16),
                separatorBuilder: (BuildContext context, int index) => GapWidget.s8(),
                itemBuilder: (context, index) => index.isOdd
                    ? Material(
                        color: AppPalette.bg4,
                        child: NotificationOrderWidget(
                          status: [1, 2].contains(index) ? OrderStatus.delivered : OrderStatus.pending,
                          orderId: '0003',
                          date: DateTime.now(),
                        ),
                      )
                    : Material(
                        color: AppPalette.bg4,
                        child: NotificationConnectionWidget(
                          status: [0, 2].contains(index) ? ConnectionStatus.accepted : ConnectionStatus.rejected,
                          avatar: 'Jab',
                          username: 'Monir El Wafi',
                          date: DateTime.now(),
                        ),
                      ),
              ),
            ),
            GapWidget.s16(),
          ],
        ),
      ),
    );
  }
}
