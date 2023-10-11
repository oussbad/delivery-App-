import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/widgets/inputs/drop_down_widget.dart';

class TestPage extends GetView<TestController> {
  const TestPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.s_16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('Test Page'),
            DropdownWidget(

              items: [
                DropdownMenuItem(value: 'Option 1', child: Text('Option 1')),
                DropdownMenuItem(value: 'Option 2', child: Text('Option 2')),
                DropdownMenuItem(value: 'Option 3', child: Text('Option 3')),
                // Add more items as needed
              ],
               onChanged: (String? value) {
        print('Selected value: $value');

        },
            ),
          ],
        ),
      ),
    );
  }
}
