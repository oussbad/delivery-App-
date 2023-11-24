import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/app_bar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/avatar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/image_picker_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_field_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/controllers/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfilePage extends GetView<EditProfileController> {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        withLogo: false,
        withBackButton: true,
        title: StringsManager.editProfile,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSpacing.s16),
        child: Column(
          children: [
            GapWidget.s24(),
            _buildAvatar(),
            GapWidget.s24(),
            const TextFieldWidget(
              placeholder: StringsManager.fullName,
            ),
            GapWidget.s16(),
            const TextFieldWidget(
              placeholder: StringsManager.email,
            ),
            GapWidget.s16(),
            const TextFieldWidget(
              placeholder: StringsManager.password,
            ),
            GapWidget.s24(),
            ButtonWidget(
              isExpanded: true,
              size: ButtonSize.large,
              label: StringsManager.submit,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return ImagePickerWidget(
      child: Stack(
        children: [
          const AvatarWidget(
            asset: 'Jab',
            size: AvatarSize.large,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              backgroundColor: AppPalette.primarySwatch,
              radius: AppSpacing.s14,
              child: Icon(
                Icons.add_rounded,
                color: AppPalette.white,
                size: AppSpacing.s14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
