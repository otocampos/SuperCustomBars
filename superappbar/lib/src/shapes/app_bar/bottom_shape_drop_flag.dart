import 'package:flutter/cupertino.dart';

class BottomShapeDropFlag extends CustomPainter {
  Paint customPaint;

  BottomShapeDropFlag( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();

    path.lineTo(size.width, size.height * 0.84);
    path.cubicTo(size.width, size.height * 0.81, size.width, size.height * 0.72, size.width, size.height * 0.62);
    path.cubicTo(size.width, size.height * 0.54, size.width, size.height * 0.45, size.width, size.height * 0.41);
    path.cubicTo(size.width, size.height / 4, size.width, size.height * 0.1, size.width, 0);
    path.cubicTo(size.width, 0, 0, 0, 0, 0);
    path.cubicTo(size.width * 0.11, size.height * 0.18, size.width * 0.95, size.height * 1.44, size.width, size.height * 0.84);
    path.cubicTo(size.width, size.height * 0.84, size.width, size.height * 0.84, size.width, size.height * 0.84);
    canvas.drawPath(path, customPaint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}