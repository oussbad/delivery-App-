import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/text_block_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/settings/controllers/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextBlocKWidget.subTitle(StringsManager.settings),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: _buildColumn(),
      ),
    );
  }

  Widget _buildColumn() {
    return ListView(
      children: [
        ..._buildLanguage(),
        ..._buildTheme(),
        ..._buildNotifications(),
        ..._buildDefaultView(),
      ],
    );
  }

  List<Widget> _buildLanguage() {
    return [
      ListTile(
        tileColor: AppPalette.bg1,
        title: TextBlocKWidget.body(
          StringsManager.languages,
          color: AppPalette.white,
        ),
      ),
      RadioListTile(
        title: TextBlocKWidget.body(
          StringsManager.english,
          color: AppPalette.white,
        ),
        value: true,
        groupValue: true,
        onChanged: (value) {},
      ),
      RadioListTile(
        title: TextBlocKWidget.body(
          StringsManager.arabic,
          color: AppPalette.white,
        ),
        value: false,
        groupValue: true,
        onChanged: (value) {},
      ),
      RadioListTile(
        title: TextBlocKWidget.body(
          StringsManager.french,
          color: AppPalette.white,
        ),
        value: false,
        groupValue: true,
        onChanged: (value) {},
      ),
    ];
  }

  List<Widget> _buildTheme() {
    return [
      ListTile(
        tileColor: AppPalette.bg1,
        title: TextBlocKWidget.body(
          StringsManager.theme,
          color: AppPalette.white,
        ),
      ),
      RadioListTile(
        title: TextBlocKWidget.body(
          StringsManager.dark,
          color: AppPalette.white,
        ),
        value: true,
        groupValue: true,
        onChanged: (value) {},
      ),
      RadioListTile(
        title: TextBlocKWidget.body(
          StringsManager.light,
          color: AppPalette.white,
        ),
        value: false,
        groupValue: true,
        onChanged: (value) {},
      ),
    ];
  }

  List<Widget> _buildNotifications() {
    return [
      ListTile(
        tileColor: AppPalette.bg1,
        title: TextBlocKWidget.body(
          StringsManager.notifications,
          color: AppPalette.white,
        ),
      ),
      RadioListTile(
        title: TextBlocKWidget.body(
          StringsManager.isOn,
          color: AppPalette.white,
        ),
        value: true,
        groupValue: true,
        onChanged: (value) {},
      ),
      RadioListTile(
        title: TextBlocKWidget.body(
          StringsManager.isOff,
          color: AppPalette.white,
        ),
        value: false,
        groupValue: true,
        onChanged: (value) {},
      ),
    ];
  }

  List<Widget> _buildDefaultView() {
    return [
      ListTile(
        tileColor: AppPalette.bg1,
        title: TextBlocKWidget.body(
          StringsManager.defaultView,
          color: AppPalette.white,
        ),
      ),
      RadioListTile(
        title: TextBlocKWidget.body(
          StringsManager.orders,
          color: AppPalette.white,
        ),
        value: true,
        groupValue: true,
        onChanged: (value) {},
      ),
      RadioListTile(
        title: TextBlocKWidget.body(
          StringsManager.notifications,
          color: AppPalette.white,
        ),
        value: false,
        groupValue: true,
        onChanged: (value) {},
      ),
      RadioListTile(
        title: TextBlocKWidget.body(
          StringsManager.statistics,
          color: AppPalette.white,
        ),
        value: false,
        groupValue: true,
        onChanged: (value) {},
      ),
    ];
  }
}
