import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';

class TermsController extends GetxController {
var  title = "".obs;
 List<dynamic>  description = [].obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    super.onInit();
    loadYourData();
  }

  Future<void> loadYourData() async {
     isLoading.value = true;
    final String response = await rootBundle.loadString('assets/JSON/terms.json');
    final data = await json.decode(response);
    isLoading.value = false;
   title.value = data["title"];
   description = data["description"];
  }
}