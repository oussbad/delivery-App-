import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/header_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/tabs_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/state_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/icon_button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
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
              IconButtonWidget(
                onPressed: () => Get.bottomSheet(
                  Material(
                    color: AppPalette.bg4,
                    child: ListView(
                      shrinkWrap: true,
                      children: ['Item 1', 'Item 2', 'Item 3']
                          .map(
                            (item) => ListTile(
                              onTap: () => Get.back(),
                              title: TextBlocKWidget.t16(item),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSpacing.r4),
                  ),
                ),
                icon: AssetsManager.sortIcon,
                isPrimary: false,
              ),
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
      itemBuilder: (context, index) => OrderItemWidget(
        onPressed: () => Get.toNamed(AppRoutes.order),
        state: const StateWidget(
          state: StateType.warning,
        ),
        title: 'Mohamed El Alaoui',
        subtitle: '12May - 400 MAD',
      ),
    );
  }
}
