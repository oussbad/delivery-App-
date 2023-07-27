import 'package:get/get.dart';

abstract class NotificationService extends GetxService {
  Future<void> init();
  void onMessageTapped(dynamic handler);
}
