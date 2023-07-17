import 'package:get/get.dart';

import '../../../app/services/network_service.dart';

class TemplateController extends GetxController {
  static TemplateController get to => Get.find();
  // NetworkService networkService = NetworkService();
  NetworkService networkService = Get.put(NetworkService()); 
  @override
  void onInit() {
    // check if internet is connected or not
    networkService.isConnected().then((value) => print(value));
    super.onInit();
  }
}
