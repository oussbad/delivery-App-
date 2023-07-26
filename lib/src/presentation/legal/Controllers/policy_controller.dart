import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';

class PolicyController extends GetxController {
  var  title = "".obs;
 List<dynamic>  description = [].obs;
  @override
  void onInit() {
    super.onInit();
    loadYourData();
  }

  Future<void> loadYourData() async {
    final String response = await rootBundle.loadString('assets/JSON/policy.json');
    final data = await json.decode(response);
   title.value = data["title"];
   description = data["description"];
  }
}