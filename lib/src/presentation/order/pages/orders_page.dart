import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/header_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/slidable_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/tabs_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/state_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/widgets/order_item_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/controllers/orders_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersPage extends GetView<OrdersController> {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppPalette.bg4,
      child: Column(
        children: [
          HeaderWidget(
            title: StringsManager.orders,
            actions: [
              GapWidget.s16(axe: GapEnum.horizontal),
              ButtonWidget(
                onPressed: () => Get.toNamed(AppRoutes.createOrder),
                size: ButtonSize.large,
                label: StringsManager.newOrder,
              ),
            ],
          ),
          TabsWidget(
            tabs: const [
              StringsManager.open,
              StringsManager.delivered,
              StringsManager.closed,
            ],
            tabViews: [
              _buildOrders(),
              _buildOrders(),
              _buildOrders(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOrders() {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 20,
      padding: EdgeInsets.all(AppSpacing.s16),
      separatorBuilder: (context, index) => GapWidget.s16(),
      itemBuilder: (context, index) => SlidableWidget(
        children: [
          SlidableModel(
            icon: AssetsManager.whatsappIcon,
            onPressed: () {},
          ),
          SlidableModel(
            icon: AssetsManager.mapIcon,
            onPressed: () {},
          ),
          SlidableModel(
            icon: AssetsManager.callIcon,
            onPressed: () {},
          ),
        ],
        child: OrderItemWidget(
          onPressed: () => Get.toNamed(AppRoutes.order),
          state: const StateWidget(
            state: StateType.warning,
          ),
          title: 'Mohamed El Alaoui',
          date: DateTime.now(),
          price: 400,
        ),
      ),
    );
  }
}
