part of 'app_pages.dart';

abstract class _Paths {
  // Just a simple template to copy from
  static const template = '/template';
  //--------------------------------------

  ///
  /// Welcome Pages
  ///
  static const splash = '/splash';
  static const onBoarding = '/onboarding';

  ///
  /// Auth Pages
  ///
  static const signUp = '/signup';
}

abstract class AppRoutes {
  AppRoutes._();
  // Just a simple template to copy from
  static const template = _Paths.template;
  //--------------------------------------

  ///
  /// Welcome Pages
  ///
  static const splash = _Paths.splash;
  static const onBoarding = _Paths.onBoarding;

  ///
  /// Auth Pages
  ///
  static const signUp = _Paths.signUp;
}
