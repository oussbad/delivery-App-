import 'package:boxpend_flutter_android_app/src/presentation/template/binds/template_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/pages/template_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/welcome/binds/splash_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/welcome/pages/splash_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.splash;

  static final pages = [
    // Just a simple template to copy from
    GetPage(
      name: _Paths.template,
      page: () => const Template(),
      binding: TemplateBind(),
    ),
    //---------------------------------------

    GetPage(
      name: _Paths.splash,
      page: () => SplashPage(),
      binding: SplashBind(),
    ),
  ];
}
