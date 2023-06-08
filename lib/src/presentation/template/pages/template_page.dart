import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
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
            const SizedBox(height: 10),
            TextBlocKWidget.h2('Text H2'),
            const SizedBox(height: 10),
            TextBlocKWidget.h3('Text H3'),
            const SizedBox(height: 10),
            TextBlocKWidget.title('Text title'),
            const SizedBox(height: 10),
            TextBlocKWidget.subTitlte('Text sub title'),
            const SizedBox(height: 10),
            TextBlocKWidget.body('Text body'),
            const SizedBox(height: 10),
            TextBlocKWidget.caption('Text caption'),
          ],
        ),
      ),
    );
  }
}
