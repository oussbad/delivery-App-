import 'package:flutter/services.dart';
import 'package:get/get.dart';

class OrderDetailsController extends GetxController {
  static OrderDetailsController get to => Get.find();

  Future<void> copyData(String text) {
    return Clipboard.setData(
      ClipboardData(text: text),
    );
  }
}
