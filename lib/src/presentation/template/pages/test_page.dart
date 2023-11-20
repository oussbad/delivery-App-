import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/header_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/icon_button_widget.dart';
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
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeaderWidget(
            title: 'Provider',
            actions: [],
          ),
          HeaderWidget(
            title: 'Provider',
            actions: [
              IconButtonWidget(
                icon: AssetsManager.bellIcon,
                onPressed: () {},
                isPrimary: false,
              ),
            ],
          ),
          HeaderWidget(
            title: 'Provider',
            actions: [
              IconButtonWidget(
                icon: AssetsManager.bellIcon,
                onPressed: () {},
                isPrimary: false,
              ),
              GapWidget.s16(axe: GapEnum.horizontal),
              ButtonWidget(
                label: 'New Order',
                onPressed: () {},
                icon: AssetsManager.plusIcon,
              )
            ],
          ),
        ],
      ),
    );
  }
}
