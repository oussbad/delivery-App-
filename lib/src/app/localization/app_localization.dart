import 'package:boxpend_flutter_android_app/src/app/localization/translations/ar_ma.dart';
import 'package:boxpend_flutter_android_app/src/app/localization/translations/en_us.dart';
import 'package:boxpend_flutter_android_app/src/app/localization/translations/fr_fr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum AppLang { ar, en, fr }

class AppLocalization extends Translations {
  AppLocalization._();

  static AppLocalization? _instance;

  static AppLocalization getInstance() {
    _instance ??= AppLocalization._();
    return _instance!;
  }

  static Locale defaultLanguage = supportedLanguages['en']!;

  static Map<String, Locale> supportedLanguages = {
    'ar': const Locale('ar', 'MA'),
    'en': const Locale('en', 'US'),
    'fr': const Locale('fr', 'FR'),
  };

  @override
  Map<String, Map<String, String>> get keys => {
        'ar_MA': arMa,
        'en_US': enUs,
        'fr_FR': frFr,
      };
}
