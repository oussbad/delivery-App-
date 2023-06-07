import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      builder: (_) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Boxpend Android App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
