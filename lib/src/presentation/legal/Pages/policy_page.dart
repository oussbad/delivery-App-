import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/policy_controller.dart';


class PolicyPage extends StatelessWidget {
  PolicyPage({super.key});
  
   final controller = Get.find<PolicyController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("title: ${controller.title}"),
           Text("description: ${controller.description}"),
        ],
      )
    );
  }
}
