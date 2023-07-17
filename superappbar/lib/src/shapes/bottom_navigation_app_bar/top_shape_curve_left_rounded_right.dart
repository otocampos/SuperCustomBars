import 'package:flutter/cupertino.dart';

class TopShapeCurveLeftRoundedRight extends CustomPainter {
  Paint customPaint;

  TopShapeCurveLeftRoundedRight( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {

    Path path = Path();
    path.lineTo(size.width, size.height);
    path.cubicTo(size.width, size.height * 0.93, size.width, size.height * 0.82, size.width, size.height * 0.69);
    path.cubicTo(size.width, size.height * 0.66, size.width, size.height * 0.6, size.width, size.height * 0.53);
    path.cubicTo(size.width, size.height * 0.46, size.width, size.height * 0.38, size.width, size.height * 0.36);
    path.cubicTo(size.width, size.height * 0.27, size.width * 0.96, size.height / 5, size.width * 0.92, size.height / 5);
    path.cubicTo(size.width * 0.86, size.height / 5, size.width * 0.1, size.height / 5, size.width * 0.1, size.height / 5);
    path.cubicTo(size.width * 0.1, size.height / 5, size.width * 0.01, size.height * 0.23, 0, size.height * 0.01);
    path.cubicTo(0, size.height * 0.01, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height, size.width, size.height);
    canvas.drawPath(path, customPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}