import 'package:boxpend_flutter_android_app/src/app/resources/assets_manager.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_typography.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/gap_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/icon_button_widget.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';

class NotificationAlertWidget extends StatefulWidget {
  const NotificationAlertWidget({
    super.key,
    required this.onEnabled,
  });

  final VoidCallback onEnabled;

  @override
  State<NotificationAlertWidget> createState() => _NotificationAlertWidgetState();
}

class _NotificationAlertWidgetState extends State<NotificationAlertWidget> {
  bool _isDismissed = false;

  @override
  Widget build(BuildContext context) {
    return _isDismissed
        ? const SizedBox.shrink()
        : InkWell(
            onTap: widget.onEnabled,
            borderRadius: BorderRadius.circular(AppSpacing.r4),
            child: ClipPath(
              clipper: ShapeBorderClipper(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppSpacing.r4),
                  ),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(AppSpacing.s20),
                decoration: BoxDecoration(
                  color: AppPalette.warning.withOpacity(.06),
                  border: Border(
                    left: BorderSide(
                      color: AppPalette.warning,
                      width: 3,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextBlocKWidget.t16('Notifications are Disabled'),
                        GapWidget.s8(),
                        InkWell(
                          onTap: widget.onEnabled,
                          child: TextBlocKWidget.t14(
                            'Enable',
                            color: AppPalette.warning,
                            decoration: TextDecoration.underline,
                            fontWeight: AppTypography.w600,
                          ),
                        ),
                      ],
                    ),
                    IconButtonWidget(
                      icon: AssetsManager.closeIcon,
                      onPressed: () => setState(() => _isDismissed = !_isDismissed),
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
