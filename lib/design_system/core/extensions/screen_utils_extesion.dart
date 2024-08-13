import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'
    hide RadiusExtension, SizeExtension;

extension ScreenUtilsNumberExtension on num {
  double get w => ScreenUtil().setWidth(this);

  double get h => ScreenUtil().setHeight(this);

  double get r => ScreenUtil().radius(this);

  double get sp => ScreenUtil().setSp(this);
}

extension ScreenUtilsEdgeInsetsExtension on EdgeInsets {
  EdgeInsets get r => copyWith(
        top: top.r,
        bottom: bottom.r,
        right: right.r,
        left: left.r,
      );

  EdgeInsets get w => copyWith(
        top: top.w,
        bottom: bottom.w,
        right: right.w,
        left: left.w,
      );

  EdgeInsets get h => copyWith(
        top: top.h,
        bottom: bottom.h,
        right: right.h,
        left: left.h,
      );
}

extension ScreenUtilsBorderRadiusExtension on BorderRadius {
  BorderRadius get r => copyWith(
        bottomLeft: bottomLeft.r,
        bottomRight: bottomRight.r,
        topLeft: topLeft.r,
        topRight: topRight.r,
      );

  BorderRadius get w => copyWith(
        bottomLeft: bottomLeft.w,
        bottomRight: bottomRight.w,
        topLeft: topLeft.w,
        topRight: topRight.w,
      );

  BorderRadius get h => copyWith(
        bottomLeft: bottomLeft.h,
        bottomRight: bottomRight.h,
        topLeft: topLeft.h,
        topRight: topRight.h,
      );
}

extension ScreenUtilsRadiusExtension on Radius {
  Radius get w => Radius.elliptical(
        x.w,
        y.w,
      );
  Radius get h => Radius.elliptical(
        x.h,
        y.h,
      );
  Radius get r => Radius.elliptical(
        x.r,
        y.r,
      );
}

class ScreenUtilsHelpers {
  static double get screenWidth => ScreenUtil().screenWidth;
  static double get screenHeigth => ScreenUtil().screenHeight;
}
