import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/template_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boxpend_flutter_android_app/src/app/services/url_launcher_service.dart';

class Template extends GetView<TemplateController> {
  const Template({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
URLLauncherService service = URLLauncherService();
final message = "Hello, this is a message from Flutter!";
final whatsappUrl = "https://wa.me/?text=${Uri.parse(message)}";
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.s_16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Template'),
              SizedBox(height: 16),
              ElevatedButton(


            onPressed: () => {service.launchURL("tel:+212657565319")},
                child: Text('Call'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => {service.launchURL(whatsappUrl)},
                child: Text('WhatsApp'),
              ),
            ],
          ),
        ),
      ),
    );
  }




}
