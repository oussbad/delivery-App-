import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/checkbox_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/drop_down_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/icon_button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/radio_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/avatar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_field_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage extends GetView<TestController> {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.s16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AvatarWidget.widthStatus(
                isSuccess: true,
                asset: 'https://i.pravatar.cc/300',
              ),
              GapWidget.s16(),
              AvatarWidget.widthStatus(
                isSuccess: false,
                asset: 'A',
              ),
              GapWidget.s16(),
              AvatarWidget(
                size: AvatarSize.medium,
                asset: 'A',
              ),
              GapWidget.s16(),
              AvatarWidget(
                size: AvatarSize.large,
                asset: 'https://i.pravatar.cc/300',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
