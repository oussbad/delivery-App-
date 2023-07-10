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
  static const signIn = '/signin';
  static const emailVerification = '/emailVerification';

  ///
  /// Home Pages
  ///
  static const home = '/home';
  ///
  /// Search Pages
  ///
  static const search = '/search';
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
  static const signIn = _Paths.signIn;
  static const emailVerification = _Paths.emailVerification;

  ///
  /// Home Pages
  ///
  static const home = _Paths.home;
  ///
  /// search Pages
  ///
  static const search = _Paths.search;
}
