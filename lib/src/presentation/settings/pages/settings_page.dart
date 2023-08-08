import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/settings/controllers/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => SwitchListTile(
              title: TextBlocKWidget.body(
                StringsManager.darkMode,
              ),
              value: controller.isDarkMode.value,
              onChanged: controller.onThemeChanged,
            ),
          ),
        ],
      ),
    );
  }
}
