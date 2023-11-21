import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/app_bar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/header_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/notification/controllers/notifications_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/notification/widgets/notification_alert_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/notification/widgets/notification_order_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsPage extends GetView<NotificationsController> {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppPalette.bg1,
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
              itemBuilder: (context, index) => NotificationOrderWidget(
                status: OrderStatus.delivered,
                orderId: '0003',
                date: DateTime.now(),
              ),
            ),
          ),
          GapWidget.s16(),
        ],
      ),
    );
  }
}
