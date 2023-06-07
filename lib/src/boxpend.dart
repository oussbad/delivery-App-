import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Boxpend extends StatelessWidget {
  const Boxpend({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Boxpend Android App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initial,
      getPages: AppPages.pages,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
