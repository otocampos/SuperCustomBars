import 'package:flutter/material.dart';
import 'package:superappbar/src/constants/shapes_types.dart';
import 'package:superappbar/superappbar.dart';

void main() {
  final superAppBar = SuperAppBar(flutterAppBar: AppBar(), shapeType: SuperAppBar.BOTH_CORNERS_ROUNDED, customPaint: Paint());

  print('criou uma instancia de SuperAppBar: ${superAppBar.shapeType}');
}
