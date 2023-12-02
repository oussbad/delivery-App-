import 'package:boxpend_flutter_android_app/src/app/core/services/token_service.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/dialog_widgets.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/message_widget.dart';
import 'package:boxpend_flutter_android_app/src/domain/usecases/auth/signout_usecase.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get to => Get.find();

  final signOutUsecase = Get.find<SignOutUsecase>();
  final tokenStorage = Get.find<TokenService>();

  void signOut() async {
    final result = await signOutUsecase.call();
    return result.fold(
      (l) => showAppDialog(
        MessageWidget.failure(failure: l),
      ),
      (r) {
        tokenStorage.removeToken();
        Get.offAllNamed(AppRoutes.signIn);
        showAppSnackbar(
          status: MessageStatus.success,
          message: StringsManager.signoutSuccess,
        );
      },
    );
  }
}
