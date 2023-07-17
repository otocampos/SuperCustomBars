import 'package:flutter/cupertino.dart';

class TopBothCornersRounded extends CustomPainter {
  Paint customPaint;

  TopBothCornersRounded( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();

    path.lineTo(0, size.height);
    path.cubicTo(0, size.height * 0.9, 0, size.height * 0.76, 0, size.height * 0.6);
    path.cubicTo(0, size.height * 0.57, 0, size.height * 0.48, 0, size.height * 0.4);
    path.cubicTo(0, size.height * 0.31, 0, size.height * 0.22, 0, size.height * 0.19);
    path.cubicTo(size.width * 0.01, size.height * 0.08, size.width * 0.04, size.height * 0.01, size.width * 0.08, 0);
    path.cubicTo(size.width * 0.14, 0, size.width * 0.91, 0, size.width * 0.91, 0);
    path.cubicTo(size.width * 0.91, 0, size.width * 0.92, size.height * 0.01, size.width * 0.93, 0);
    path.cubicTo(size.width * 0.96, size.height * 0.01, size.width, size.height * 0.08, size.width, size.height * 0.18);
    path.cubicTo(size.width, size.height / 5, size.width, size.height * 0.31, size.width, size.height * 0.4);
    path.cubicTo(size.width, size.height * 0.48, size.width, size.height * 0.56, size.width, size.height * 0.6);
    path.cubicTo(size.width, size.height * 0.76, size.width, size.height * 0.9, size.width, size.height);
    path.cubicTo(size.width, size.height, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height, 0, size.height, 0, size.height);
    canvas.drawPath(path, customPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}