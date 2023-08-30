import 'package:boxpend_flutter_android_app/src/app/localization/app_localization.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_themes.dart';
import 'package:boxpend_flutter_android_app/src/presentation/welcome/binds/app_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/welcome/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Boxpend extends GetView<AppController> {
  const Boxpend({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AppController());
    return GetMaterialApp(
      title: StringsManager.appTitle,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initial,
      initialBinding: AppBind(),
      getPages: AppPages.pages,
      locale: controller.loadLang(),
      translations: AppLocalization.getInstance(),
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: controller.loadThemeMode(),
    );
  }
}
