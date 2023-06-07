import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Boxpend extends StatelessWidget {
  const Boxpend({super.key});

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
