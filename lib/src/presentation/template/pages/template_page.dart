import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/buttons/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/text_block_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/template_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Template extends GetView<TemplateController> {
  const Template({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.app.tr),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(
                label: 'Submit',
                onPressed: () {},
              ),
              GapWidget.spacing12(),
              ButtonWidget(
                label: 'Submit',
                backgroundColor: AppPalette.danger,
                onPressed: () {},
              ),
              GapWidget.spacing12(),
              ButtonWidget(
                label: 'Submit',
                backgroundColor: AppPalette.success,
                onPressed: () {},
              ),
              GapWidget.spacing12(),
              ButtonWidget(
                label: 'Submit',
                backgroundColor: AppPalette.warning,
                onPressed: () {},
              ),
              GapWidget.spacing12(),
              ButtonWidget(
                label: 'Submit',
                backgroundColor: AppPalette.info,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
