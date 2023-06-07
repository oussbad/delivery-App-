import 'package:boxpend_flutter_android_app/src/presentation/template/binds/template_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/pages/template_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.template;

  static final pages = [
    // Just a simple template to copy from
    GetPage(
      name: _Paths.template,
      page: () => const Template(),
      binding: TemplateBind(),
    ),
  ];
  //---------------------------------------
}
