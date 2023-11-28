import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/header_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/slidable_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/tabs_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_field_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/connections/controllers/connections_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/connections/pages/create_connection_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/connections/widgets/connection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConnectionsPage extends GetView<ConnectionsController> {
  const ConnectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppPalette.bg4,
        child: Column(
          children: [
            HeaderWidget(
              title: StringsManager.connections,
              actions: [
                ButtonWidget(
                  onPressed: () => Get.dialog(
                    const CreateConnectionPage(),
                  ),
                  label: StringsManager.newConnection,
                  size: ButtonSize.large,
                ),
              ],
            ),
            TabsWidget(
              tabs: const [
                StringsManager.accepted,
                StringsManager.pending,
              ],
              tabViews: [
                _buildConnections(),
                _buildConnections(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConnections() {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 20,
      padding: EdgeInsets.all(AppSpacing.s16),
      separatorBuilder: (context, index) => GapWidget.s16(),
      itemBuilder: (context, index) => SlidableWidget(
        children: [
          SlidableModel(
            icon: AssetsManager.trashIcon,
            color: AppPalette.danger,
            onPressed: () {},
          ),
          SlidableModel(
            icon: AssetsManager.revokeIcon,
            onPressed: () {},
          ),
        ],
        child: Material(
          color: AppPalette.bg4,
          child: const ConnectionItemWidget(
            title: 'Monir El Wafi',
            subtitle: 'monir.elwafi@gmail.com',
            avatar: 'Jab',
          ),
        ),
      ),
    );
  }
}
