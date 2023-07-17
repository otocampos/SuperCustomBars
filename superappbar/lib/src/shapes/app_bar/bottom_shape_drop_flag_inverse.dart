import 'package:flutter/cupertino.dart';

class BottomShapeDropFlagInverse extends CustomPainter {
  Paint customPaint;

  BottomShapeDropFlagInverse( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();
    path.lineTo(0, size.height * 0.84);
    path.cubicTo(0, size.height * 0.81, 0, size.height * 0.72, 0, size.height * 0.62);
    path.cubicTo(0, size.height * 0.54, 0, size.height * 0.45, 0, size.height * 0.41);
    path.cubicTo(0, size.height / 4, 0, size.height * 0.1, 0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(size.width * 0.89, size.height * 0.18, size.width * 0.05, size.height * 1.44, 0, size.height * 0.84);
    path.cubicTo(0, size.height * 0.84, 0, size.height * 0.84, 0, size.height * 0.84);
    canvas.drawPath(path, customPaint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}