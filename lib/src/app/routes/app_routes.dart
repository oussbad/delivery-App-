part of 'app_pages.dart';

abstract class _Paths {
  ///
  /// Welcome Pages
  ///
  static const splash = '/splash';
  static const onBoarding = '/onboarding';

  ///
  /// Malicious Pages
  ///
  static const notFound = '/notFound';

  ///
  /// Legal Pages
  ///
  static const terms = '/terms';
  static const policy = '/policy';
  static const help = '/help';

  ///
  /// Auth Pages
  ///
  static const signUp = '/signup';
  static const signIn = '/signin';
  static const emailVerification = '/email-verification';
  static const changePassword = '/change-password';
  static const editProfile = '/edit-profile';

  ///
  /// Home Pages
  ///
  static const home = '/home';

  ///
  /// Order Pages
  ///
  static const createOrder = '/create-order';
  static const order = '/order';
}

abstract class AppRoutes {
  AppRoutes._();

  ///
  /// Welcome Pages
  ///
  static const splash = _Paths.splash;
  static const onBoarding = _Paths.onBoarding;

  ///
  /// Malicious Pages
  ///
  static const notFound = _Paths.notFound;

  ///
  /// Legal Pages
  ///
  static const terms = _Paths.terms;
  static const policy = _Paths.policy;
  static const help = _Paths.help;

  ///
  /// Auth Pages
  ///
  static const signUp = _Paths.signUp;
  static const signIn = _Paths.signIn;
  static const emailVerification = _Paths.emailVerification;
  static const changePassword = _Paths.changePassword;
  static const editProfile = _Paths.editProfile;

  ///
  /// Home Pages
  ///
  static const home = _Paths.home;

  ///
  /// Order Pages
  ///
  static const createOrder = _Paths.createOrder;
  static const order = _Paths.order;
}
