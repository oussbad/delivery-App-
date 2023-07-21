import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsPage extends StatelessWidget {
  NotificationsPage({super.key});
  var MessageData = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: Text('$MessageData'),
        ),
      ),
    );
  }
}
