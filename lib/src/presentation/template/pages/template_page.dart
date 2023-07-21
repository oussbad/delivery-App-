import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/template_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/widgets/utils/tabs_widget.dart';

class Template extends GetView<TemplateController> {
  const Template({super.key});

  @override
  Widget build(BuildContext context) {
    return TabsWidget( 
      length: 2,
      page: const [
         Center(
          child: Text("Accepted"),
        ),
         Center(
          child: Text("Pending"),
        ),
      ],
      tabs: const [
         Tab(
          text: "Accepted",
        ),
         Tab(
          text: "Pending",
        ),
      ],
    ) ; 
    // Scaffold(
    //   body: Padding(
    //     padding: EdgeInsets.symmetric(horizontal: AppSpacing.s_16),
    //     child: Center(
    //       child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: const [
    //         Text('Template'),
    //       ],
    //     ),
    //   ),
    // ),
    // );
  }
}
