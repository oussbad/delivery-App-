import 'package:boxpend_flutter_android_app/src/presentation/auth/controllers/profile_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/connections/controllers/connections_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/controllers/home_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/controllers/statistics_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/controllers/orders_controller.dart';
import 'package:get/get.dart';

class HomeBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<OrdersController>(
      () => OrdersController(),
    );
    Get.lazyPut<StatisticsController>(
      () => StatisticsController(),
    );
    Get.lazyPut<ConnectionsController>(
      () => ConnectionsController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
