import 'package:boxpend_flutter_android_app/src/presentation/order/controllers/create_order_controller.dart';
import 'package:get/get.dart';

class CreateOrderBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateOrderController>(() => CreateOrderController());
  }
}
