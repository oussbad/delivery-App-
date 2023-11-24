import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.s44),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextBlocKWidget.t24(StringsManager.notFound404),
              GapWidget.s8(),
              TextBlocKWidget.t16(StringsManager.notFound),
              GapWidget.s16(),
              ButtonWidget(
                onPressed: () => Get.back(),
                label: StringsManager.notFoundButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
