import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:flutter/material.dart';

class SwitchButtonWidget extends StatefulWidget {
  const SwitchButtonWidget({super.key});

  @override
  State<SwitchButtonWidget> createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {
  bool _isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => _isEnabled = !_isEnabled),
      child: _buildTrack(),
    );
  }

  Duration _setDuration() => const Duration(milliseconds: 500);

  Widget _buildTrack() {
    return AnimatedContainer(
      duration: _setDuration(),
      width: AppSpacing.s16 * 2,
      height: AppSpacing.s18,
      decoration: BoxDecoration(
        color: _isEnabled ? AppPalette.primarySwatch : AppPalette.disabledBtn1,
        borderRadius: BorderRadius.circular(
          AppSpacing.s16 * 2,
        ),
      ),
      child: _buildThumb(),
    );
  }

  Widget _buildThumb() {
    return AnimatedAlign(
      duration: _setDuration(),
      alignment: _isEnabled ? Alignment.centerLeft : Alignment.centerRight,
      child: AnimatedContainer(
        margin: EdgeInsets.all(AppSpacing.s8),
        duration: _setDuration(),
        width: AppSpacing.s16,
        height: AppSpacing.s16,
        decoration: BoxDecoration(
          color: _isEnabled ? AppPalette.white : AppPalette.disabledBtn2,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
