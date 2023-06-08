import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextBlocKWidget.h1('Text H1'),
            GapWidget.spacing12(),
            TextBlocKWidget.h2('Text H2'),
            GapWidget.spacing12(),
            TextBlocKWidget.h3('Text H3'),
            GapWidget.spacing12(),
            TextBlocKWidget.title('Text title'),
            GapWidget.spacing12(),
            TextBlocKWidget.subTitlte('Text sub title'),
            GapWidget.spacing12(),
            TextBlocKWidget.body('Text body'),
            GapWidget.spacing12(),
            TextBlocKWidget.caption('Text caption'),
          ],
        ),
      ),
    );
  }
}
