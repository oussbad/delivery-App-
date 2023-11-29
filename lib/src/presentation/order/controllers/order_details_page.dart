import 'package:boxpend_flutter_android_app/src/app/core/services/url_launcher_service.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class OrderDetailsController extends GetxController {
  static OrderDetailsController get to => Get.find();

  final urlLauncher = Get.find<URLLauncherService>();

  Future<void> copyData(String text) {
    return Clipboard.setData(
      ClipboardData(text: text),
    );
  }

  launchWhatsapp(String phoneNumber) async {
    final result = await urlLauncher.launch('https://wa.me/$phoneNumber');
    result.fold(
      (l) => print('error'),
      (r) => r,
    );
  }

  launchMap(String mapsLink) async {
    final result = await urlLauncher.launch(mapsLink);
    result.fold(
      (l) => print('error'),
      (r) => r,
    );
  }

  launchCall(String phoneNumber) async {
    final result = await urlLauncher.launch('tel:$phoneNumber');
    result.fold(
      (l) => print('error'),
      (r) => r,
    );
  }
}
