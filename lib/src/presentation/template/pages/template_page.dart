import 'package:boxpend_flutter_android_app/src/app/core/error/failures.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
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
              Obx(
                () => controller.template.value.fold(
                  (failure) {
                    if (failure is NetworkFailure) {
                      return const Text('erorr networ');
                    } else if (failure is ServerFailure) {
                      return const Text('erorr server');
                    } else {
                      return const Text('erorr networ');
                    }
                  },
                  (template) => Text(template.name),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
