import 'package:boxpend_flutter_android_app/src/presentation/auth/binds/signin_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/binds/signup_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/pages/email_verification_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/pages/signin_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/pages/signup_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/binds/home_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/pages/home_page.dart';
<<<<<<< HEAD
import 'package:boxpend_flutter_android_app/src/presentation/settings/binds/settings_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/settings/pages/settings_page.dart';
=======
import 'package:boxpend_flutter_android_app/src/presentation/home/pages/search_page.dart';
>>>>>>> 1d6819959c8225450da26354f95f25a1fc5576ed
import 'package:boxpend_flutter_android_app/src/presentation/template/binds/template_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/template/pages/template_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/welcome/binds/onboarding_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/welcome/binds/splash_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/welcome/pages/onboarding_page.dart';
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
<<<<<<< HEAD
    /// Settings Pages
    ///
    GetPage(
      name: _Paths.settings,
      page: () => const SettingsPage(),
      binding: SettingsBind(),
=======
    /// Search Pages
    ///
    GetPage(
      name: _Paths.search,
      page: () => const SearchScreen(),
>>>>>>> 1d6819959c8225450da26354f95f25a1fc5576ed
    ),
  ];
}
