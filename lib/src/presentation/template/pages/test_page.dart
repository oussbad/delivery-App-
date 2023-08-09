import 'package:boxpend_flutter_android_app/src/app/core/services/api_service.dart';
import 'package:boxpend_flutter_android_app/src/app/services/api_service_impl.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/controllers/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage extends GetView<TestController> {
  const TestPage({super.key});
  @override
  Widget build(BuildContext context) {
    final ApiService apiService = Get.put(ApiServiceImpl(Get.find()));
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.s_16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [ 
              ElevatedButton(
              onPressed: ()async{
               var responce =await apiService.get('https://jsonplaceholder.typicode.com/posts/1') ; 
               var data = responce.fold((l) => l, (r) => r);
              return showDialog(
                context: context, 
                builder: (context) => AlertDialog(
                  title: Text('Data from api') , 
                  content: Text(data.toString()) , 
                )
                ) ;
              }, 
              child: Text('Test Api') , 
              ) , 

              
             
              
            ],
          ),
        ),
      ),
    );
  }
}
