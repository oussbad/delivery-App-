import 'package:boxpend_flutter_android_app/src/app/resources/constants_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/resources/strings_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/utils/app_snackbar.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  late File _image;
  final ImagePicker _imagePicker = ImagePicker();

  void _validatePickedImage(XFile? image) async {
    final imageSize = await image!.length();

    if (GetUtils.isNull(image)) {
      AppSnackbar.show(
        title: 'title',
        message: StringsManager.imageRequired,
        icon: Icons.info,
      );
    }
    if (GetUtils.isImage(image.path)) {
      AppSnackbar.show(
        title: 'title',
        message: StringsManager.imageNotAllowed,
        icon: Icons.info,
      );
    }
    if (GetUtils.isGreaterThan(imageSize, ConstantsManager.maxImageSize)) {
      AppSnackbar.show(
        title: 'title',
        message: StringsManager.imageMaxSize,
        icon: Icons.info,
      );
    }

    return null;
  }

  void _upload(ImageSource source) async {
    final picked = await _imagePicker.pickImage(source: source);
    _validatePickedImage(picked);
    final File uploaded = File(picked!.path);

    setState(() {
      _image = uploaded;
    });
  }

  void _openBottmSheet() => Get.bottomSheet(
        _bottomSheet(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.r4),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _openBottmSheet,
      child: widget.child,
    );
  }

  Widget _bottomSheet() {
    return Material(
      color: AppPalette.bg4,
      child: ListView(
        shrinkWrap: true,
        children: [
          _buildListTile(
            icon: Icons.camera_rounded,
            label: StringsManager.camera,
            onTaped: () => _upload(ImageSource.camera),
          ),
          _buildListTile(
            icon: Icons.photo_rounded,
            label: StringsManager.gallery,
            onTaped: () => _upload(ImageSource.gallery),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile({
    required String label,
    required IconData icon,
    required VoidCallback onTaped,
    Color? color,
  }) {
    return ListTile(
      title: TextBlocKWidget.t16(
        label,
        color: color ?? AppPalette.white,
      ),
      leading: Icon(
        color: color ?? AppPalette.white,
        icon,
      ),
      onTap: onTaped,
    );
  }
}
