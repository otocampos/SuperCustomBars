import 'package:flutter/cupertino.dart';

class TopShapeDropFlagInverse extends CustomPainter {
  Paint customPaint;

  TopShapeDropFlagInverse( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();
    path.lineTo(0, size.height * 0.09);
    path.cubicTo(0, size.height * 0.11, 0, size.height * 0.53, 0, size.height * 0.59);
    path.cubicTo(0, size.height * 0.65, 0, size.height * 0.7, 0, size.height * 0.73);
    path.cubicTo(size.width * 0.01, size.height * 0.84, 0, size.height * 0.93, 0, size.height);
    path.cubicTo(0, size.height, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height * 0.42, size.width, size.height * 0.42);
    path.cubicTo(size.width, size.height * 0.42, size.width * 0.68, -0.24, 0, size.height * 0.09);
    path.cubicTo(0, size.height * 0.09, 0, size.height * 0.09, 0, size.height * 0.09);
    canvas.drawPath(path, customPaint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}