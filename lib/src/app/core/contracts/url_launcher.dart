import 'package:get/get.dart';

abstract class URLLauncher extends GetxService {
  Future<void> launchURL(String url);
}
