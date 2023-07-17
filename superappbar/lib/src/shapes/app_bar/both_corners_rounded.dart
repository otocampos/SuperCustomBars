import 'package:flutter/cupertino.dart';

class BothCornersRounded extends CustomPainter {
  Paint customPaint;

  BothCornersRounded( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();

    path.lineTo(0, 0);
    path.cubicTo(0, size.height * 0.1, 0, size.height * 0.24, 0, size.height * 0.4);
    path.cubicTo(0, size.height * 0.44, 0, size.height * 0.52, 0, size.height * 0.6);
    path.cubicTo(0, size.height * 0.69, 0, size.height * 0.78, 0, size.height * 0.82);
    path.cubicTo(size.width * 0.01, size.height * 0.93, size.width * 0.04, size.height, size.width * 0.08, size.height);
    path.cubicTo(size.width * 0.14, size.height, size.width * 0.91, size.height, size.width * 0.91, size.height);
    path.cubicTo(size.width * 0.91, size.height, size.width * 0.92, size.height, size.width * 0.93, size.height);
    path.cubicTo(size.width * 0.96, size.height, size.width, size.height * 0.92, size.width, size.height * 0.82);
    path.cubicTo(size.width, size.height * 0.79, size.width, size.height * 0.69, size.width, size.height * 0.6);
    path.cubicTo(size.width, size.height * 0.52, size.width, size.height * 0.44, size.width, size.height * 0.4);
    path.cubicTo(size.width, size.height * 0.24, size.width, size.height * 0.1, size.width, 0);
    path.cubicTo(size.width, 0, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, 0, 0, 0);

    canvas.drawPath(path, customPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}