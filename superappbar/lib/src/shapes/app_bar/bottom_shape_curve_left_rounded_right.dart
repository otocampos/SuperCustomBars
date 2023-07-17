import 'package:flutter/cupertino.dart';

class BottomShapeCurveLeftRoundedRight extends CustomPainter {
  Paint customPaint;

  BottomShapeCurveLeftRoundedRight( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {

    Path path = Path();
    path.lineTo(size.width, 0);
    path.cubicTo(size.width, size.height * 0.08, size.width, size.height / 5, size.width, size.height * 0.32);
    path.cubicTo(size.width, size.height * 0.35, size.width, size.height * 0.42, size.width, size.height * 0.48);
    path.cubicTo(size.width, size.height * 0.56, size.width, size.height * 0.63, size.width, size.height * 0.66);
    path.cubicTo(size.width, size.height * 0.75, size.width * 0.96, size.height * 0.8, size.width * 0.92, size.height * 0.8);
    path.cubicTo(size.width * 0.86, size.height * 0.81, size.width * 0.1, size.height * 0.8, size.width * 0.1, size.height * 0.8);
    path.cubicTo(size.width * 0.1, size.height * 0.8, size.width * 0.01, size.height * 0.78, 0, size.height);
    path.cubicTo(0, size.height, 0, 0, 0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(size.width, 0, size.width, 0, size.width, 0);
    canvas.drawPath(path, customPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}