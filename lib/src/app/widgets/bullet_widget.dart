import 'package:boxpend_flutter_android_app/src/app/themes/app_palette.dart';
import 'package:flutter/material.dart';

class BulletWidget extends StatelessWidget {
  const BulletWidget({
    super.key,
    this.color,
    this.radius = 4.0,
  });

  final double radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _BulletPainter(
        radius: radius,
        color: color ?? AppPalette.black,
      ),
    );
  }
}

class _BulletPainter extends CustomPainter {
  const _BulletPainter({
    required this.color,
    required this.radius,
  });

  final Color color;
  final double radius;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = radius
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      radius,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
