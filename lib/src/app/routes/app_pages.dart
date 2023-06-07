import 'package:boxpend_flutter_android_app/src/presentation/test/test_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.test;

  static final pages = [
    GetPage(
      name: _Paths.test,
      page: () => const Test(),
    ),
  ];
}
