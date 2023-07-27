import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/loader_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/template_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TemplatePage extends GetView<TemplateController> {
  const TemplatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.s_16),
        child: Center(
          child: _buildTemplate(),
        ),
      ),
    );
  }

  Widget _buildTemplate() {
    return Obx(
      () {
        if (controller.isLoading.value) {
          return const LoaderWidget();
        } else if (controller.failure.value.isEmpty) {
          return Text(controller.template.value.name!);
        } else {
          return Text(controller.failure.value);
        }
      },
    );
  }
}
