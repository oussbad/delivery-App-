import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/app_bar_widget.dart';
import 'package:boxpend_flutter_android_app/src/presentation/auth/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AppBarWidget(
        withLogo: false,
        withBackButton: true,
        title: StringsManager.profile,
      ),
    );
  }
}
