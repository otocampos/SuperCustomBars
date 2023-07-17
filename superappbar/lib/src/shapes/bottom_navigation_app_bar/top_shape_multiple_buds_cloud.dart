import 'package:flutter/cupertino.dart';

class TopShapeMultipleBudsCloud extends CustomPainter {
  Paint customPaint;

  TopShapeMultipleBudsCloud( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();

    path.lineTo(size.width, size.height * 0.01);
    path.cubicTo(size.width, size.height * 0.01, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height, 0, 0, 0, 0);
    path.cubicTo(0, 0, size.width * 0.06, size.height * 0.3, size.width * 0.13, 0);
    path.cubicTo(size.width * 0.13, 0, size.width * 0.19, size.height * 0.29, size.width / 4, 0);
    path.cubicTo(size.width / 4, 0, size.width * 0.31, size.height * 0.29, size.width * 0.38, 0);
    path.cubicTo(size.width * 0.38, 0, size.width * 0.44, size.height * 0.29, size.width / 2, size.height * 0.01);
    path.cubicTo(size.width / 2, size.height * 0.01, size.width * 0.56, size.height * 0.3, size.width * 0.62, 0);
    path.cubicTo(size.width * 0.62, 0, size.width * 0.68, size.height * 0.3, size.width * 0.75, size.height * 0.01);
    path.cubicTo(size.width * 0.75, size.height * 0.01, size.width * 0.81, size.height * 0.29, size.width * 0.88, size.height * 0.01);
    path.cubicTo(size.width * 0.89, size.height * 0.05, size.width * 0.9, size.height * 0.08, size.width * 0.91, size.height * 0.1);
    path.cubicTo(size.width * 0.91, size.height * 0.11, size.width * 0.92, size.height * 0.13, size.width * 0.93, size.height * 0.13);
    path.cubicTo(size.width * 0.94, size.height * 0.14, size.width * 0.94, size.height * 0.13, size.width * 0.95, size.height * 0.13);
    path.cubicTo(size.width * 0.97, size.height * 0.11, size.width * 0.98, size.height * 0.07, size.width, size.height * 0.01);
    path.cubicTo(size.width, size.height * 0.01, size.width, size.height * 0.01, size.width, size.height * 0.01);

    canvas.drawPath(path, customPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}