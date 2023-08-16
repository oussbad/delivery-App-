import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage extends GetView<TestController> {
  const TestPage({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TestController());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.s_16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Test Page',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: AppSpacing.s_16),
            ElevatedButton(
              onPressed: () async {
                final responce = {
                  "message":"success!",
                };
                String url = 'https://jsonplaceholder.typicode.com/posts/1';
                final data = await controller.fetchMockData(url, responce);
                // show data in dialog
                Get.defaultDialog(
                  title: 'Mock Data',
                  content: Text(data.toString()),
                );
              },
              child: const Text('Get Mock Data'),
            ),
          ],
        ),
      ),
    );
  }
}
