import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/utils/app_snackbar.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/template_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Template extends GetView<TemplateController> {
  const Template({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.s_16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Template'),
              ElevatedButton(
                onPressed: () {
                  AppSnackbar.show(
                    title: 'title',
                    message: 'message',
                    icon: Icons.home,
                  );
                  // AppSnackbarExtension.showAppSnackbarWithAction(
                  //   title: "done ",
                  //   message: " your action is done ",
                  //   icon: Icons.check,
                  //   actionTitle: "undo",
                  //   actionFunction: () {
                  //     AppSnackbarExtension.showAppSnackbar(
                  //       title: "undo",
                  //       message: " your action is undone ",
                  //       icon: Icons.undo,
                  //     );
                  //   },
                  // );
                },
                child: const Text("open snackbar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
