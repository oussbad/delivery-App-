import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/app_bar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/state_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/controllers/order_details_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/widgets/order_details_actions_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/widgets/order_details_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetailsPage extends GetView<OrderDetailsController> {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        withLogo: false,
        withBackButton: true,
        title: '#0003',
        actions: [
          StateWidget(
            state: StateType.success,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.s16),
        child: Column(
          children: [
            OrderDetailsActionsWidget(
              whatsappOnPressed: () {},
              mapOnPressed: () {},
              callOnPressed: () {},
            ),
            GapWidget.s16(),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  const OrderDetailsItemWidget(
                    icon: AssetsManager.profileIcon,
                    title: 'Aimran',
                  ),
                  GapWidget.s16(),
                  OrderDetailsItemWidget(
                    icon: AssetsManager.callIcon,
                    title: '+212 6 22854163',
                    onCopied: () => controller.copyData('+212 6 22854163'),
                  ),
                  GapWidget.s16(),
                  OrderDetailsItemWidget(
                    icon: AssetsManager.locationIcon,
                    title: 'Ouezzane, Ain Dorij 16222',
                    onCopied: () => controller.copyData('Ouezzane, Ain Dorij 16222'),
                  ),
                  GapWidget.s16(),
                  const OrderDetailsItemWidget(
                    icon: AssetsManager.dollarIcon,
                    title: '400 MAD',
                  ),
                  GapWidget.s16(),
                  const OrderDetailsItemWidget(
                    icon: AssetsManager.infoIcon,
                    title: 'Phasellus felis orci, maximus sit amet malesuada ac, pretium eget nisl. Donec finibus neque at mi volutpat dignissim.',
                  ),
                  GapWidget.s16(),
                ],
              ),
            ),
            GapWidget.s24(),
            ButtonWidget(
              isExpanded: true,
              type: ButtonType.danger,
              size: ButtonSize.large,
              label: StringsManager.delete,
              onPressed: () {},
            ),
            GapWidget.s16(),
            ButtonWidget(
              isExpanded: true,
              size: ButtonSize.large,
              label: StringsManager.edit,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
