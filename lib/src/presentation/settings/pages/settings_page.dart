import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/themes/app_themes.dart';
import '../controllers/settings_controller.dart';

class SettingsPage extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final SettingsController settingsController = Get.find();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile(
                value: AppThemes.light,
                groupValue: settingsController,
                onChanged: (value) => {}),
            RadioListTile(
                value: AppThemes.light,
                groupValue: settingsController,
                onChanged: (value) => {})
          ],
        ),
      ),
    );
  }
}
