import 'package:flutter/cupertino.dart';

import '../factory/shape_factory.dart';

class DrawShapeImpl extends CustomPainter implements ShapeFactory  {

  CustomPainter shapeModel;
  DrawShapeImpl({required this.shapeModel});


  @override
  void paint(Canvas canvas, Size size)
  {
    shapeModel.paint(canvas, size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
