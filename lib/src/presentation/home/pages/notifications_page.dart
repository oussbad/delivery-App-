import 'package:flutter/material.dart';
import 'package:get/get.dart';
class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var vvvv=Get.arguments;
    return  Scaffold(
      body: Center(
        child: SizedBox(
          child: Text('$vvvv'),
        ),
      ),
    );
  }
}
