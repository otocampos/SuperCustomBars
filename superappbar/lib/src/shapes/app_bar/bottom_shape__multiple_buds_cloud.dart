import 'package:flutter/cupertino.dart';

class BottomShapeMultipleBudsCloud extends CustomPainter {
  Paint customPaint;

  BottomShapeMultipleBudsCloud( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();

    path.lineTo(size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, 0, size.width, 0);
    path.cubicTo(size.width, 0, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height, size.width * 0.06, size.height * 0.71, size.width * 0.13, size.height);
    path.cubicTo(size.width * 0.13, size.height, size.width * 0.19, size.height * 0.72, size.width / 4, size.height);
    path.cubicTo(size.width / 4, size.height, size.width * 0.31, size.height * 0.72, size.width * 0.38, size.height);
    path.cubicTo(size.width * 0.38, size.height, size.width * 0.44, size.height * 0.71, size.width / 2, size.height);
    path.cubicTo(size.width / 2, size.height, size.width * 0.56, size.height * 0.71, size.width * 0.62, size.height);
    path.cubicTo(size.width * 0.62, size.height, size.width * 0.68, size.height * 0.71, size.width * 0.75, size.height);
    path.cubicTo(size.width * 0.75, size.height, size.width * 0.81, size.height * 0.71, size.width * 0.88, size.height);
    path.cubicTo(size.width * 0.89, size.height * 0.95, size.width * 0.9, size.height * 0.92, size.width * 0.91, size.height * 0.9);
    path.cubicTo(size.width * 0.91, size.height * 0.89, size.width * 0.92, size.height * 0.88, size.width * 0.93, size.height * 0.87);
    path.cubicTo(size.width * 0.94, size.height * 0.87, size.width * 0.94, size.height * 0.87, size.width * 0.95, size.height * 0.88);
    path.cubicTo(size.width * 0.97, size.height * 0.89, size.width * 0.98, size.height * 0.94, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height, size.width, size.height);

    canvas.drawPath(path, customPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}