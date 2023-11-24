import 'package:boxpend_flutter_android_app/src/app/resources/button_style.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/app_bar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/avatar_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
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
        child: ListView(
          children: [
            GapWidget.s24(),
            const AvatarWidget(
              asset: 'Jab',
              size: AvatarSize.large,
            ),
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
              size: ButtonSize.large,
              label: StringsManager.submit,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
