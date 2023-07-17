import 'package:flutter/cupertino.dart';

class BottomShapedRounded extends CustomPainter {
  Paint customPaint;

  BottomShapedRounded( this.customPaint);

  @override
  void paint(Canvas canvas, Size size) {



    Path path = Path();

    path.lineTo(0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(size.width, 0, size.width, size.height * 0.62, size.width, size.height * 0.62);
    path.cubicTo(size.width, size.height * 0.62, size.width * 0.55, size.height * 1.44, 0, size.height * 0.66);
    path.cubicTo(0, size.height * 0.66, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, 0, 0, 0);



    canvas.drawPath(path, customPaint);





  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
