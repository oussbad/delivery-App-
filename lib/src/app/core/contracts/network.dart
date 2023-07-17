import 'package:get/get.dart';

abstract class Network extends GetxService {
  Future<bool> isConnected();
}
