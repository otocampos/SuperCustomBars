import 'package:flutter/cupertino.dart';

class TopShapeMultipleFringe extends CustomPainter {
  Paint customPaint;

  TopShapeMultipleFringe( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();
    path.lineTo(size.width, size.height * 0.12);
    path.cubicTo(size.width * 0.98, size.height * 0.07, size.width * 0.97, size.height * 0.02, size.width * 0.95, size.height * 0.01);
    path.cubicTo(size.width * 0.94, 0, size.width * 0.93, 0, size.width * 0.92, size.height * 0.01);
    path.cubicTo(size.width * 0.92, size.height * 0.01, size.width * 0.91, size.height * 0.02, size.width * 0.91, size.height * 0.03);
    path.cubicTo(size.width * 0.89, size.height * 0.05, size.width * 0.88, size.height * 0.08, size.width * 0.87, size.height * 0.13);
    path.cubicTo(size.width * 0.81, -0.15, size.width * 0.75, size.height * 0.13, size.width * 0.75, size.height * 0.13);
    path.cubicTo(size.width * 0.68, -0.16, size.width * 0.62, size.height * 0.13, size.width * 0.62, size.height * 0.13);
    path.cubicTo(size.width * 0.56, -0.15, size.width / 2, size.height * 0.12, size.width / 2, size.height * 0.12);
    path.cubicTo(size.width * 0.44, -0.15, size.width * 0.37, size.height * 0.13, size.width * 0.37, size.height * 0.13);
    path.cubicTo(size.width * 0.31, -0.15, size.width / 4, size.height * 0.13, size.width / 4, size.height * 0.13);
    path.cubicTo(size.width * 0.19, -0.15, size.width * 0.13, size.height * 0.13, size.width * 0.13, size.height * 0.13);
    path.cubicTo(size.width * 0.06, -0.15, 0, size.height * 0.13, 0, size.height * 0.13);
    path.cubicTo(0, size.height * 0.13, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height * 0.12, size.width, size.height * 0.12);
    path.cubicTo(size.width, size.height * 0.12, size.width, size.height * 0.12, size.width, size.height * 0.12);
    canvas.drawPath(path, customPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}