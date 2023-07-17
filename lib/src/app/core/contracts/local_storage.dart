import 'package:get/get.dart';

abstract class LocalStorage extends GetxService {
  Future<void> save(String key, dynamic value);
  dynamic get(String key);
  Future<void> remove(String key);
}
