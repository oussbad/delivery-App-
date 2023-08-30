import 'package:boxpend_flutter_android_app/src/presentation/auth/binds/signin_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/binds/signup_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/pages/email_verification_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/pages/signin_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/pages/signup_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/binds/home_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/pages/home_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/legal/Pages/policy_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/legal/Pages/terms_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/settings/binds/settings_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/settings/pages/settings_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/binds/test_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/binds/template_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/pages/test_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/pages/template_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/welcome/binds/onboarding_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/welcome/binds/splash_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/welcome/pages/onboarding_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/welcome/pages/splash_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = AppRoutes.home;

  static final pages = [
    ///
    /// Just a example to copy from
    ///
    GetPage(
      name: _Paths.template,
      page: () => const TemplatePage(),
      binding: TemplateBind(),
    ),
    GetPage(
      name: _Paths.test,
      page: () => const TestPage(),
      binding: TestBind(),
    ),
    //---------------------------------------

    ///
    /// Welcome Pages
    ///
    GetPage(
      name: _Paths.splash,
      page: () => SplashPage(),
      binding: SplashBind(),
    ),

    GetPage(
      name: _Paths.onBoarding,
      page: () => const OnBoardingPage(),
      binding: OnBoardingBind(),
    ),

    ///
    /// Legal Pages
    ///
    GetPage(
      name: _Paths.terms,
      page: () => TermsPage(),
    ),
    GetPage(
      name: _Paths.policy,
      page: () => PolicyPage(),
    ),

    ///
    /// Auth Pages
    ///
    GetPage(
      name: _Paths.signUp,
      page: () => const SignUpPage(),
      binding: SignUpBind(),
    ),
    GetPage(
      name: _Paths.signIn,
      page: () => const SignInPage(),
      binding: SignInBind(),
    ),
    GetPage(
      name: _Paths.emailVerification,
      page: () => const EmailVerificationPage(),
    ),

    ///
    /// Home Pages
    ///
    GetPage(
      name: _Paths.home,
      page: () => const HomePage(),
      binding: HomeBind(),
    ),

    ///
    /// Settings pages
    ///
    GetPage(
      name: _Paths.settings,
      page: () => const SettingsPage(),
      binding: SettingsBind(),
    ),
  ];
}
