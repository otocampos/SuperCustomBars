import 'package:flutter/cupertino.dart';

class BottomShapeWaveInverse extends CustomPainter {
  Paint customPaint;

  BottomShapeWaveInverse( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();

    path.lineTo(size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, 0, size.width, 0);
    path.cubicTo(size.width, 0, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, size.height * 0.51, 0, size.height * 0.51);
    path.cubicTo(0, size.height * 0.51, size.width * 0.17, size.height * 1.08, size.width * 0.4, size.height * 0.87);
    path.cubicTo(size.width * 0.4, size.height * 0.87, size.width * 0.53, size.height * 0.71, size.width * 0.68, size.height * 0.72);
    path.cubicTo(size.width * 0.78, size.height * 0.72, size.width * 0.89, size.height * 0.82, size.width, size.height * 0.98);
    path.cubicTo(size.width, size.height * 0.98, size.width, size.height * 0.98, size.width, size.height * 0.98);
    path.cubicTo(size.width, size.height * 0.98, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height, size.width, size.height);

    canvas.drawPath(path, customPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}