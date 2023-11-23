import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/app_bar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/avatar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/icon_button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/connections/pages/connections_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/controllers/home_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/pages/statistics_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/notification/pages/notifications_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/pages/orders_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class _BottomNavBarItem {
  final String icon;
  final String label;
  _BottomNavBarItem({
    required this.icon,
    required this.label,
  });
}

class HomePage extends GetView<HomeController> {
  HomePage({super.key});

  final List<_BottomNavBarItem> _items = [
    _BottomNavBarItem(
      icon: AssetsManager.boxIcon,
      label: StringsManager.orders,
    ),
    _BottomNavBarItem(
      icon: AssetsManager.statisticsIcon,
      label: StringsManager.statistics,
    ),
    _BottomNavBarItem(
      icon: AssetsManager.profile2Icon,
      label: StringsManager.connections,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBarWidget(
        actions: [
          IconButtonWidget(
            onPressed: () => Get.dialog(
              const NotificationsPage(),
              barrierDismissible: false,
            ),
            icon: AssetsManager.bellIcon,
          ),
          GapWidget.s8(axe: GapEnum.horizontal),
          const AvatarWidget(
            asset: 'jib',
            size: AvatarSize.small,
          ),
        ],
      ),
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: const [
            OrdersPage(),
            StatisticsPage(),
            ConnectionsPage(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget? _buildBottomNavigationBar() {
    return BottomAppBar(
      color: AppPalette.bg3,
      child: SizedBox(
        height: 84,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _items
              .asMap()
              .map(
                (key, value) => MapEntry(
                  key,
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () => controller.changeScreen(key),
                          icon: _buildItemIcon(key, value.icon),
                        ),
                        _buildLabel(key, value.label),
                      ],
                    ),
                  ),
                ),
              )
              .values
              .toList(),
        ),
      ),
    );
  }

  Widget _buildItemIcon(int index, String icon) {
    return Obx(
      () => SvgPicture.asset(
        icon,
        width: 28,
        height: 28,
        color: (controller.currentIndex.value == index) ? AppPalette.primarySwatch : AppPalette.disabledBtn1,
      ),
    );
  }

  Widget _buildLabel(int index, String label) {
    return Obx(
      () => TextBlocKWidget.t14(
        label,
        color: (controller.currentIndex.value == index) ? AppPalette.primarySwatch : AppPalette.disabledBtn1,
      ),
    );
  }
}
