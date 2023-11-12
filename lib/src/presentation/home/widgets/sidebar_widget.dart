import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/home/controllers/sidebar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heroicons/heroicons.dart';

class SidebarWidget extends GetView<SidebarController> {
  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _userAccountsDrawerHeader(),
          _buildListTile(
            label: StringsManager.editProfile,
            icon: HeroIcons.userCircle,
            onTaped: controller.goToEditProfilePage,
          ),
          _buildSwitch(),
          _buildListTile(
            label: StringsManager.settings,
            icon: HeroIcons.cog8Tooth,
            onTaped: controller.goToSettingsPage,
          ),
          GapWidget.s8(),
          _buildListTile(
            label: StringsManager.about,
            icon: HeroIcons.informationCircle,
            onTaped: controller.goToAboutPage,
          ),
          _buildListTile(
            label: StringsManager.termsAndConditions,
            icon: HeroIcons.documentText,
            onTaped: controller.goToTermsAndConditionsPage,
          ),
          _buildListTile(
            label: StringsManager.policyPrivacy,
            icon: HeroIcons.documentCheck,
            onTaped: controller.goToPolicyPrivacyPage,
          ),
          GapWidget.s8(),
          _buildListTile(
            label: StringsManager.logout,
            icon: HeroIcons.arrowRightOnRectangle,
            onTaped: controller.signout,
            // color: AppPalette.danger,
          ),
        ],
      ),
    );
  }

  Widget _userAccountsDrawerHeader() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(),
      currentAccountPicture: CircleAvatar(
        //backgroundImage: NetworkImage(controller.avatar),
        backgroundColor: AppPalette.primarySwatch,
      ),
      accountName: TextBlocKWidget.t14(controller.username),
      accountEmail: TextBlocKWidget.t14(controller.email),
    );
  }

  Widget _buildSwitch() {
    return ListTile(
      title: TextBlocKWidget.t14(StringsManager.darkMode),
      leading: HeroIcon(
        HeroIcons.moon,
        color: AppPalette.white,
      ),
      trailing: Switch(
        value: controller.isDarkMode.value,
        onChanged: controller.onDarkModeChanged,
      ),
    );
  }

  Widget _buildListTile({
    required String label,
    required HeroIcons icon,
    required VoidCallback onTaped,
    Color? color,
  }) {
    return ListTile(
      title: TextBlocKWidget.t14(
        label,
        color: color ?? AppPalette.white,
      ),
      leading: HeroIcon(
        color: color ?? AppPalette.white,
        icon,
      ),
      onTap: onTaped,
    );
  }
}
