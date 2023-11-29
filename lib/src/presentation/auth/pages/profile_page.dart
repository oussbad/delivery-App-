import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/routes/app_pages.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/app_bar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/avatar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/dialog_widgets.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/drop_down_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/switch_button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/controllers/profile_controller.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/widgets/profile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppPalette.bg4,
        child: Column(
          children: [
            const AppBarWidget(
              withCloseButton: true,
              withLogo: false,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(AppSpacing.s16),
                children: [
                  GapWidget.s8(),
                  _buildUserInfo(),
                  GapWidget.s24(),
                  ProfileItemWidget(
                    onPressed: () => Get.toNamed(AppRoutes.editProfile),
                    icon: AssetsManager.profileIcon,
                    title: StringsManager.editProfile,
                  ),
                  GapWidget.s16(),
                  ProfileItemWidget(
                    onPressed: () => Get.toNamed(AppRoutes.changePassword),
                    icon: AssetsManager.passwordIcon,
                    title: StringsManager.changePassword,
                  ),
                  GapWidget.s16(),
                  const ProfileItemWidget(
                    icon: AssetsManager.bellIcon,
                    title: StringsManager.notifications,
                    trailing: SwitchButtonWidget(),
                  ),
                  GapWidget.s16(),
                  const ProfileItemWidget(
                    icon: AssetsManager.sunIcon,
                    title: StringsManager.theme,
                    trailing: DropdownWidget(
                      isDisabled: true,
                      size: ButtonSize.small,
                      value: 'Dark',
                      items: ['Dark', 'Light'],
                    ),
                  ),
                  GapWidget.s16(),
                  const ProfileItemWidget(
                    icon: AssetsManager.globalIcon,
                    title: StringsManager.language,
                    trailing: DropdownWidget(
                      isDisabled: true,
                      size: ButtonSize.small,
                      value: 'English',
                      items: ['English', 'Arabic'],
                    ),
                  ),
                  GapWidget.s16(),
                  ProfileItemWidget(
                    onPressed: () => Get.toNamed(AppRoutes.terms),
                    icon: AssetsManager.infoIcon,
                    title: StringsManager.help,
                  ),
                  GapWidget.s16(),
                  ProfileItemWidget(
                    onPressed: () => showAppOverlay(controller.signOut),
                    color: AppPalette.danger,
                    icon: AssetsManager.logoutIcon,
                    title: StringsManager.logout,
                  ),
                  GapWidget.s24(),
                  TextBlocKWidget.t16(
                    'Boxpend V1.0 (Beta)',
                    color: AppPalette.disabledBtn1,
                    fontWeight: AppTypography.w400,
                  ),
                  GapWidget.s24(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfo() {
    return Material(
      color: AppPalette.bg4,
      child: ListTile(
        tileColor: AppPalette.primarySwatch.withOpacity(.06),
        contentPadding: EdgeInsets.all(AppSpacing.s16),
        leading: const AvatarWidget(asset: 'Aimrane'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.r4),
        ),
        title: TextBlocKWidget.t16(
          'Aimrane Kiddiss',
          color: AppPalette.white.withOpacity(.7),
        ),
        subtitle: TextBlocKWidget.t16(
          'aimran.kiddiss@gmail.com',
          color: AppPalette.disabledBtn1,
        ),
      ),
    );
  }
}
