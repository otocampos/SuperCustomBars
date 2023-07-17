import 'package:flutter/material.dart';



class BottomShapeCurveRightRoundedLeft extends CustomPainter {
  Paint customPaint;

  BottomShapeCurveRightRoundedLeft( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {

    Path path = Path();
    path.lineTo(0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(
        size.width, 0, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height * 0.9, size.width * 0.97,
        size.height * 0.8, size.width * 0.91, size.height * 0.8);
    path.cubicTo(size.width * 0.91, size.height * 0.8, size.width * 0.08,
        size.height * 0.8, size.width * 0.08, size.height * 0.8);
    path.cubicTo(size.width * 0.04, size.height * 0.8, 0, size.height * 0.72, 0,
        size.height * 0.61);
    path.cubicTo(0, size.height * 0.61, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, 0, 0, 0);
    canvas.drawPath(path, customPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
