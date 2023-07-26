import 'package:boxpend_flutter_android_app/src/app/services/local_storage_service.dart';
import 'package:boxpend_flutter_android_app/src/boxpend.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(LocalStorageService());
  runApp(
    DevicePreview(
      enabled: true,
      isToolbarVisible: false,
      defaultDevice: DevicePreview.defaultDevices.firstWhere(
        (device) => device.name == "Small",
      ),
      backgroundColor: Colors.black87,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (_) => const Boxpend(),
    ),
  );
}
