import 'package:boxpend_flutter_android_app/src/presentation/notification/controllers/notifications_controller.dart';
import 'package:get/get.dart';

class NotificationsBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationsController>(() => NotificationsController());
  }
}
