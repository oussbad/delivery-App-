import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:boxpend_flutter_android_app/src/app/themes/app_spacing.dart';
import 'package:boxpend_flutter_android_app/src/app/widgets/text_block_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum AvatarSize { small, medium, large }

enum ConnectionStatus { accepted, rejected }

class _AvaarBasicWidget extends StatelessWidget {
  const _AvaarBasicWidget({
    super.key,
    required this.asset,
    required this.size,
    this.status,
  });

  final String asset;
  final AvatarSize size;
  final ConnectionStatus? status;

  @override
  Widget build(BuildContext context) {
    return GetUtils.isNull(status) ? _buildAvatar() : _buildAvatarWithStatus();
  }

  double _setAvatarSize() {
    switch (size) {
      case AvatarSize.small:
        return AppSpacing.s16;
      case AvatarSize.medium:
        return AppSpacing.s24;
      case AvatarSize.large:
        return AppSpacing.s36;
      default:
        return AppSpacing.s16;
    }
  }

  Widget _buildAvatarWithStatus() {
    return Stack(
      children: [
        _buildAvatar(),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            backgroundColor: status == ConnectionStatus.accepted ? AppPalette.success : AppPalette.danger,
            radius: 6,
            child: Icon(
              status == ConnectionStatus.accepted ? Icons.check_rounded : Icons.close_rounded,
              color: AppPalette.white,
              size: 4,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAvatar() {
    if (GetUtils.isNullOrBlank(asset)!) {
      return _buildTextAvatar('?');
    } else {
      if (GetUtils.isURL(asset)) {
        return _buildImageAvatar(asset);
      } else {
        return _buildTextAvatar(
          GetUtils.capitalizeFirst(asset)![0],
        );
      }
    }
  }

  Widget _buildImageAvatar(String asset) {
    return CircleAvatar(
      radius: _setAvatarSize(),
      backgroundImage: NetworkImage(asset),
    );
  }

  Widget _buildTextAvatar(String text) {
    return CircleAvatar(
      radius: _setAvatarSize(),
      backgroundColor: Color(text.hashCode & 0xFFFFFF).withOpacity(1.0),
      child: Center(
        child: TextBlocKWidget.t16(
          text,
          textAlign: TextAlign.center,
          color: AppPalette.white,
        ),
      ),
    );
  }
}

class AvatarWidget extends _AvaarBasicWidget {
  const AvatarWidget({
    super.key,
    required super.asset,
    super.size = AvatarSize.medium,
  });

  const AvatarWidget.widthStatus({
    super.key,
    required super.asset,
    super.status,
  }) : super(
          size: AvatarSize.small,
        );
}
