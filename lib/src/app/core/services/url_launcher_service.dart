import 'package:get/get.dart';

abstract class URLLauncherService extends GetxService {
  Future<void> launchURL(String url);
}
