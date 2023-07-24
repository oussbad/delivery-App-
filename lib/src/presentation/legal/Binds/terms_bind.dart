
import 'package:get/get.dart';

import '../Controllers/terms_controller.dart';

class TermsBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermsController>(
      () => TermsController(),
    );
  }
}
