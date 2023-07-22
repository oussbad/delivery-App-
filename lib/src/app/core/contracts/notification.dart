import 'package:get/get.dart';

abstract class Notification extends GetxService {
  Future<void> init();
  void onMessageTapped(dynamic handler);
}
