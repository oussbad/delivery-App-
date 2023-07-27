import 'package:get/get.dart';

abstract class NetworkService extends GetxService {
  Future<bool> isConnected();
}
