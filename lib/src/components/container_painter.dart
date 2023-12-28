
import 'package:flutter/material.dart';
import 'package:menu_dashboard_app/output/colors.gen.dart';
import 'package:menu_dashboard_app/src/utils/app_utils.dart';

class ContainerPainter extends CustomPainter {
  final bool isOnline;

  const ContainerPainter({
    super.repaint,
    required this.isOnline,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint()
      ..strokeWidth = 4.0
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.fill;
    final center = Offset(size.width / 2, size.height / 2);
    if (isOnline) {
      myPaint.shader = AppUtils.containerGradient.createShader(
          Rect.fromCircle(center: center, radius: size.width / 2));
    } else {
      myPaint.color = MenuAppColor.black.withAlpha(200);
    }
    canvas.drawArc(
        Rect.fromCircle(center: center, radius: size.width / 2 * 1.1),
        90,
        270,
        false,
        myPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
