import 'dart:ui';

import 'package:super_custom_bars/src/shapes/bottom_navigation_app_bar/top_shape_curve_right_rounded_left.dart';
import 'package:super_custom_bars/src/shapes/bottom_navigation_app_bar/top_shape_drop_flag_inverse.dart';
import 'package:super_custom_bars/src/shapes/bottom_navigation_app_bar/top_shape_multiple_buds_cloud.dart';
import 'package:super_custom_bars/src/shapes/bottom_navigation_app_bar/top_shape_multiple_fringe.dart';

import '../enums/super_custom_bars_types.dart';
import '../repositories/shapes_impl.dart';
import '../shapes/app_bar/both_corners_rounded.dart';
import '../shapes/app_bar/bottom_shape_wave.dart';
import '../shapes/app_bar/bottom_shaped_rounded.dart';
import '../shapes/app_bar/bottom_shape_curve_left_rounded_right.dart';
import '../shapes/app_bar/bottom_shape_curve_right_rounded_left.dart';
import '../shapes/app_bar/inverse_bottom_shape_wave.dart';
import '../shapes/app_bar/bottom_shape_drop_flag.dart';
import '../shapes/app_bar/bottom_shape_drop_flag_inverse.dart';
import '../shapes/app_bar/bottom_shape__multiple_buds_cloud.dart';
import '../shapes/app_bar/bottom_shape_multiple_fringe.dart';
import '../shapes/bottom_navigation_app_bar/top_shape_curve_left_rounded_right.dart';
import '../shapes/bottom_navigation_app_bar/top_both_corners_rounded.dart';
import '../shapes/bottom_navigation_app_bar/top_shape_drop_flag.dart';
import '../shapes/bottom_navigation_app_bar/top_shape_rounded.dart';
import '../shapes/bottom_navigation_app_bar/top_shape_wave.dart';
import '../shapes/bottom_navigation_app_bar/top_shape_wave_inverse.dart';

abstract class ShapeFactory {
  factory ShapeFactory(SuperCustomBarTypes type, Paint customPaint) {
    switch (type) {
      case SuperCustomBarTypes.shapeBottomWave:
        return DrawShapeImpl(shapeModel: BottomShapeWave(customPaint));

      case SuperCustomBarTypes.shapeBottomRounded:
        return DrawShapeImpl(shapeModel: BottomShapedRounded(customPaint));

      case SuperCustomBarTypes.shapeBottomCurvedLeftEdgeRightRounded:
        return DrawShapeImpl(
            shapeModel: BottomShapeCurveLeftRoundedRight(customPaint));

      case SuperCustomBarTypes.shapeBottomCurvedRightEdgeLeftRounded:
        return DrawShapeImpl(
            shapeModel: BottomShapeCurveRightRoundedLeft(customPaint));

      case SuperCustomBarTypes.shapeBottomBothCornersRounded:
        return DrawShapeImpl(shapeModel: BothCornersRounded(customPaint));

      case SuperCustomBarTypes.shapeBottomWaveInverse:
        return DrawShapeImpl(shapeModel: BottomShapeWaveInverse(customPaint));

      case SuperCustomBarTypes.shapeBottomDropFlag:
        return DrawShapeImpl(shapeModel: BottomShapeDropFlag(customPaint));

      case SuperCustomBarTypes.shapeBottomDropFlagInverse:
        return DrawShapeImpl(
            shapeModel: BottomShapeDropFlagInverse(customPaint));

      case SuperCustomBarTypes.shapeBottomMultipleBudsCloud:
        return DrawShapeImpl(
            shapeModel: BottomShapeMultipleBudsCloud(customPaint));

      case SuperCustomBarTypes.shapeBottomMultipleFringe:
        return DrawShapeImpl(
            shapeModel: BottomShapeMultipleFringe(customPaint));

      case SuperCustomBarTypes.shapeTopCurvedLeftEdgeRightRounded:
        return DrawShapeImpl(
            shapeModel: TopShapeCurveLeftRoundedRight(customPaint));

        case SuperCustomBarTypes.shapeTopCurvedRightEdgeLeftRounded:
        return DrawShapeImpl(
            shapeModel: TopShapeCurveRightRoundedLeft(customPaint));

      case SuperCustomBarTypes.shapeTopBothCornersRounded:
        return DrawShapeImpl(
            shapeModel: TopBothCornersRounded(customPaint));

      case SuperCustomBarTypes.shapeTopRounded:
        return DrawShapeImpl(
            shapeModel: TopShapeRounded(customPaint));

      case SuperCustomBarTypes.shapeTopWave:
        return DrawShapeImpl(
            shapeModel: TopShapeWave(customPaint));

        case SuperCustomBarTypes.shapeTopWaveInverse:
        return DrawShapeImpl(
            shapeModel: TopShapeWaveInverse(customPaint));

      case SuperCustomBarTypes.shapeTopDropFlag:
        return DrawShapeImpl(
            shapeModel: TopShapeDropFlag(customPaint));

        case SuperCustomBarTypes.shapeTopDropFlagInverse:
        return DrawShapeImpl(
            shapeModel: TopShapeDropFlagInverse(customPaint));
        case SuperCustomBarTypes.shapeTopMultipleBudsCloud:
        return DrawShapeImpl(
            shapeModel: TopShapeMultipleBudsCloud(customPaint));

      case SuperCustomBarTypes.shapeTopMultipleFringe:
        return DrawShapeImpl(
            shapeModel: TopShapeMultipleFringe(customPaint));

      default:
        throw ArgumentError('Invalid type: $type');
    }
  }
}
