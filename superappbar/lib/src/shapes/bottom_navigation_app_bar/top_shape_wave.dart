import 'package:flutter/cupertino.dart';

class TopShapeWave extends CustomPainter {
  Paint customPaint;

  TopShapeWave( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();

    path.lineTo(0, 0);
    path.cubicTo(0, 0, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height * 0.49, size.width, size.height * 0.49);
    path.cubicTo(size.width, size.height * 0.49, size.width * 0.83, -0.08, size.width * 0.6, size.height * 0.14);
    path.cubicTo(size.width * 0.6, size.height * 0.14, size.width * 0.47, size.height * 0.29, size.width * 0.32, size.height * 0.29);
    path.cubicTo(size.width * 0.22, size.height * 0.29, size.width * 0.11, size.height * 0.19, size.width * 0.01, size.height * 0.02);
    path.cubicTo(size.width * 0.01, size.height * 0.02, size.width * 0.01, size.height * 0.02, size.width * 0.01, size.height * 0.02);
    path.cubicTo(size.width * 0.01, size.height * 0.02, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, 0, 0, 0);
    canvas.drawPath(path, customPaint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}