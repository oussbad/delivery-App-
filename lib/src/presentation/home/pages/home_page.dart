import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/text_block_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/controllers/home_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/pages/connections_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/pages/notifications_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/pages/orders_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/pages/statistics_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/widgets/search_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/widgets/sidebar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(
        title: Obx(
          () => TextBlocKWidget.subTitle(
            controller.navigationItems[controller.currentIndex.value],
          ),
        ),
        leading: IconButton(
          icon: const HeroIcon(HeroIcons.bars3),
          onPressed: controller.openDrawer,
        ),
        actions: [
          IconButton(
            icon: const HeroIcon(HeroIcons.magnifyingGlass),
            onPressed: () => showSearch(
              context: context,
              delegate: SearchWidget(),
            ),
          ),
        ],
      ),
      drawer: const SidebarWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.s_16,
          vertical: AppSpacing.s_8,
        ),
        child: Obx(
          () => IndexedStack(
            index: controller.currentIndex.value,
            children: const [
              OrdersPage(),
              StatisticsPage(),
              NotificationsPage(),
              ConnectionsPage(),
            ],
          ),
        ),
      ),
      floatingActionButton: _buildFAB(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildFAB() => FloatingActionButton(
        onPressed: controller.goToAddNewOrderPage,
        child: const HeroIcon(HeroIcons.plus),
      );

  Widget? _buildBottomNavigationBar() {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        onTap: controller.changeScreen,
        iconSize: AppSpacing.s_28,
        items: const [
          BottomNavigationBarItem(
            icon: HeroIcon(HeroIcons.cube),
            label: StringsManager.orders,
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(HeroIcons.chartPie),
            label: StringsManager.statistics,
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(HeroIcons.bell),
            label: StringsManager.notifications,
          ),
          BottomNavigationBarItem(
            icon: HeroIcon(HeroIcons.users),
            label: StringsManager.connections,
          ),
        ],
      ),
    );
  }
}
