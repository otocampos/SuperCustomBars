import 'package:flutter/cupertino.dart';

class BottomShapeWave extends CustomPainter {
  Paint customPaint;

  BottomShapeWave( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();

    path.lineTo(0, size.height);
    path.cubicTo(0, size.height, 0, 0, 0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(size.width, 0, size.width, size.height * 0.51, size.width, size.height * 0.51);
    path.cubicTo(size.width, size.height * 0.51, size.width * 0.83, size.height * 1.08, size.width * 0.6, size.height * 0.87);
    path.cubicTo(size.width * 0.6, size.height * 0.87, size.width * 0.47, size.height * 0.71, size.width * 0.32, size.height * 0.72);
    path.cubicTo(size.width * 0.22, size.height * 0.72, size.width * 0.11, size.height * 0.82, size.width * 0.01, size.height * 0.98);
    path.cubicTo(size.width * 0.01, size.height * 0.98, size.width * 0.01, size.height * 0.98, size.width * 0.01, size.height * 0.98);
    path.cubicTo(size.width * 0.01, size.height * 0.98, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height, 0, size.height, 0, size.height);
    canvas.drawPath(path, customPaint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}