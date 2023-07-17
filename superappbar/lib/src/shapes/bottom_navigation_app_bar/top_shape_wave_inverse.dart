import 'package:flutter/cupertino.dart';

class TopShapeWaveInverse extends CustomPainter {
  Paint customPaint;

  TopShapeWaveInverse( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();

    path.lineTo(size.width, 0);
    path.cubicTo(size.width, 0, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height, 0, size.height * 0.49, 0, size.height * 0.49);
    path.cubicTo(0, size.height * 0.49, size.width * 0.17, -0.08, size.width * 0.4, size.height * 0.14);
    path.cubicTo(size.width * 0.4, size.height * 0.14, size.width * 0.53, size.height * 0.29, size.width * 0.68, size.height * 0.29);
    path.cubicTo(size.width * 0.78, size.height * 0.29, size.width * 0.89, size.height * 0.19, size.width, size.height * 0.02);
    path.cubicTo(size.width, size.height * 0.02, size.width, size.height * 0.02, size.width, size.height * 0.02);
    path.cubicTo(size.width, size.height * 0.02, size.width, 0, size.width, 0);
    path.cubicTo(size.width, 0, size.width, 0, size.width, 0);
    canvas.drawPath(path, customPaint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}