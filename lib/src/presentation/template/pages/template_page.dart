import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/utils/loader_widget.dart';
import 'package:boxpend_flutter_android_app/src/domain/entities/template_entitiy.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/template_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TemplatePage extends GetView<TemplateController> {
  const TemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.s_16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                if (controller.isLoading.value) {
                  return const LoaderWidget();
                } else {
                  if (controller.error.value.isEmpty) {
                    return Text(controller.template.value.name);
                  } else {
                    return Text(controller.error.value);
                  }
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
