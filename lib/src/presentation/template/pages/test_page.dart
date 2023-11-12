import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/drop_down_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
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
              ButtonWidget(
                label: 'Submit',
                onPressed: () {},
              ),
              GapWidget.s16(),
              ButtonWidget(
                type: ButtonType.secondary,
                label: 'Submit',
                onPressed: () {},
              ),
              GapWidget.s16(),
              ButtonWidget(
                type: ButtonType.outline,
                label: 'Submit',
                onPressed: () {},
              ),
              GapWidget.s16(),
              ButtonWidget(
                type: ButtonType.text,
                label: 'Submit',
                onPressed: () {},
              ),
              GapWidget.s16(),
              ButtonWidget(
                type: ButtonType.danger,
                label: 'Submit',
                onPressed: () {},
              ),
              GapWidget.s16(),
              DropdownWidget(
                value: 'Arabic',
                items: ['Arabic'],
                onChanged: (v) {},
              ),
              GapWidget.s16(),
              ButtonWidget(
                icon: AssetsManager.plusIcon,
                label: 'Submit',
                onPressed: () {},
              ),
              GapWidget.s16(),
              ButtonWidget(
                isLarge: true,
                type: ButtonType.danger,
                label: 'Submit',
                onPressed: () {},
              ),
              // GapWidget.s16(),
              // const DropdownWidget(
              //   type: ButtonType.secondary,
              // ),
              // GapWidget.s16(),
              // const DropdownWidget(
              //   type: ButtonType.outline,
              // ),
              // GapWidget.s16(),
              // const DropdownWidget(
              //   type: ButtonType.text,
              // ),
              // GapWidget.s24(),
              // const DropdownWidget(
              //   type: ButtonType.primary,
              //   isDisabled: true,
              // ),
              // GapWidget.s16(),
              // const DropdownWidget(
              //   type: ButtonType.secondary,
              //   isDisabled: true,
              // ),
              // GapWidget.s16(),
              // const DropdownWidget(
              //   type: ButtonType.outline,
              //   isDisabled: true,
              // ),
              // GapWidget.s16(),
              // const DropdownWidget(
              //   type: ButtonType.text,
              //   isDisabled: true,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
