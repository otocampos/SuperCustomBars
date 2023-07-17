import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'enums/super_custom_bars_types.dart';
import 'factory/shape_factory.dart';
//1
///Widget Class for customize App Bars
class SuperCustomBar extends StatelessWidget implements PreferredSizeWidget {
  //2
  ///Original App Bar from Flutter SDK with backgroundcolor = TRANSPARENT and ELEVATION =0
  final Widget flutterAppBar;
  ///The height of Bar, default height is 125dp
  final double customHeight;
  ///Choose one option of shape between many options
  final SuperCustomBarTypes shapeType;
  ///Paint class painting a solid color or gradient color
  final Paint customPaint;

  SuperCustomBar({
    Key? key,
    required this.flutterAppBar,
    this.customHeight = 125,
    required this.shapeType,
    required this.customPaint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      child: CustomPaint(
        painter:
        ShapeFactory(shapeType,  customPaint) as CustomPainter,
        child: PreferredSize(
          preferredSize: Size.fromHeight(customHeight),
          child: flutterAppBar,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(customHeight);
}
