import 'package:boxpend_flutter_android_app/src/presentation/auth/binds/change_password_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/binds/edit_profile_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/binds/signin_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/binds/signup_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/pages/change_password_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/pages/edit_profile_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/pages/email_verification_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/pages/signin_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/pages/signup_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/binds/home_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/pages/home_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/malicious/Pages/policy_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/malicious/Pages/terms_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/malicious/Pages/help_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/malicious/Pages/not_found_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/binds/create_order_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/binds/order_details_bind.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/pages/create_order_page.dart';
import 'package:boxpend_flutter_android_app/src/presentation/order/pages/order_details_page.dart';
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

  static const initial = AppRoutes.home;

  static final notFound = GetPage(
    name: _Paths.notFound,
    page: () => const NotFoundPage(),
  );

  static final pages = [
    ///
    /// Just a example to copy from
    ///
    GetPage(
      name: _Paths.template,
      page: () => const TemplatePage(),
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
    GetPage(
      name: _Paths.help,
      page: () => HelpPage(),
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
    GetPage(
      name: _Paths.changePassword,
      page: () => const ChangePasswordPage(),
      binding: ChangePasswordBind(),
    ),
    GetPage(
      name: _Paths.editProfile,
      page: () => const EditProfilePage(),
      binding: EditProfileBind(),
    ),

    ///
    /// Home Pages
    ///
    GetPage(
      name: _Paths.home,
      page: () => HomePage(),
      binding: HomeBind(),
    ),

    ///
    /// Orders pages
    ///
    GetPage(
      name: _Paths.createOrder,
      page: () => CreateOrderPage(),
      binding: CreateOrderBind(),
    ),
    GetPage(
      name: _Paths.order,
      page: () => const OrderDetailsPage(),
      binding: OrderDetailsBind(),
    ),
  ];
}
