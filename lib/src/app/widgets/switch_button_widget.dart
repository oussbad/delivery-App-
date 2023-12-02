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

  Duration _setDuration() => const Duration(milliseconds: 300);

  Widget _buildTrack() {
    return AnimatedContainer(
      duration: _setDuration(),
      width: AppSpacing.s24 * 2,
      height: AppSpacing.s24,
      decoration: BoxDecoration(
        color: _isEnabled ? AppPalette.primarySwatch : AppPalette.disabledBtn1,
        borderRadius: BorderRadius.circular(
          AppSpacing.s20 * 2,
        ),
      ),
      child: _buildThumb(),
    );
  }

  Widget _buildThumb() {
    return AnimatedAlign(
      duration: _setDuration(),
      alignment: _isEnabled ? Alignment.centerRight : Alignment.centerLeft,
      child: AnimatedContainer(
        margin: const EdgeInsets.all(6),
        duration: _setDuration(),
        width: AppSpacing.s16,
        height: AppSpacing.s16,
        decoration: BoxDecoration(
          color: AppPalette.bg4,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
