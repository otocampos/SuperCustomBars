import 'package:flutter/cupertino.dart';

class TopShapeCurveRightRoundedLeft extends CustomPainter {
  Paint customPaint;

  TopShapeCurveRightRoundedLeft( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {

    Path path = Path();
    path.lineTo(0, size.height);
    path.cubicTo(0, size.height * 0.93, 0, size.height * 0.82, 0, size.height * 0.69);
    path.cubicTo(0, size.height * 0.66, 0, size.height * 0.6, 0, size.height * 0.53);
    path.cubicTo(0, size.height * 0.46, 0, size.height * 0.38, 0, size.height * 0.36);
    path.cubicTo(size.width * 0.01, size.height * 0.27, size.width * 0.04, size.height / 5, size.width * 0.08, size.height / 5);
    path.cubicTo(size.width * 0.14, size.height / 5, size.width * 0.9, size.height / 5, size.width * 0.9, size.height / 5);
    path.cubicTo(size.width * 0.9, size.height / 5, size.width, size.height * 0.23, size.width, size.height * 0.01);
    path.cubicTo(size.width, size.height * 0.01, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height, 0, size.height, 0, size.height);
    canvas.drawPath(path, customPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}