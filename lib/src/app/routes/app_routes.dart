part of 'app_pages.dart';

abstract class _Paths {
  // Just a simple template to copy from
  static const template = '/template';
  //--------------------------------------
  static const splash = '/splash';
  static const onBoarding = '/onboarding';
}

abstract class AppRoutes {
  AppRoutes._();
  // Just a simple template to copy from
  static const template = _Paths.template;
  //--------------------------------------
  static const splash = _Paths.splash;
  static const onBoarding = _Paths.onBoarding;
}
