import 'package:boxpend_flutter_android_app/src/presentation/legal/Controllers/terms_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsPage extends StatelessWidget {
  TermsPage({super.key});

  final controller = Get.find<TermsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => controller.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Termstitle: ${controller.title}",style: TextStyle(fontSize: 14),),
                    Text("description: ${controller.description}",style: TextStyle(fontSize: 12, ),),
                  ],
                ),
            )));
  }
}
