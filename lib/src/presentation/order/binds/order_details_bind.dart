import 'package:boxpend_flutter_android_app/src/presentation/order/controllers/order_details_page.dart';
import 'package:get/get.dart';

class OrderDetailsBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderDetailsController>(() => OrderDetailsController());
  }
}
