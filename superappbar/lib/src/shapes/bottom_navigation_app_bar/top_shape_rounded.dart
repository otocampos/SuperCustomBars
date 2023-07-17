import 'package:flutter/cupertino.dart';

class TopShapeRounded extends CustomPainter {
  Paint customPaint;

  TopShapeRounded( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();
    path.lineTo(0, size.height);
    path.cubicTo(0, size.height, size.width, size.height, size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height * 0.56, size.width, size.height * 0.56);
    path.cubicTo(size.width * 0.95, size.height * 0.39, size.width * 0.77, size.height * 0.01, size.width * 0.51, 0);
    path.cubicTo(size.width * 0.36, 0, size.width * 0.15, size.height * 0.13, 0, size.height * 0.54);
    path.cubicTo(0, size.height * 0.54, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height, 0, size.height, 0, size.height);


    canvas.drawPath(path, customPaint);





  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
