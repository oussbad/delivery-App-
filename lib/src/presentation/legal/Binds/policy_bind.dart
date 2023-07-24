import 'package:get/get.dart';

import '../Controllers/policy_controller.dart';

class PolicyBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PolicyController>(
      () => PolicyController(),
    );
  }
}
