import 'package:flutter/cupertino.dart';

class TopShapeDropFlag extends CustomPainter {
  Paint customPaint;

  TopShapeDropFlag( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();

    path.lineTo(size.width, size.height * 0.08);
    path.cubicTo(size.width, size.height * 0.09, size.width, size.height * 0.22, size.width, size.height * 0.32);
    path.cubicTo(size.width, size.height * 0.41, size.width, size.height / 2, size.width, size.height * 0.55);
    path.cubicTo(size.width, size.height * 0.73, size.width, size.height * 0.89, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width * 0.01, size.height, size.width * 0.01, size.height);
    path.cubicTo(-0.1, size.height * 0.17, size.width * 0.86, -0.16, size.width, size.height * 0.08);
    path.cubicTo(size.width, size.height * 0.08, size.width, size.height * 0.08, size.width, size.height * 0.08);
    canvas.drawPath(path, customPaint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}