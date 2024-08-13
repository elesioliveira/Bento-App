import 'package:bento_app/design_system/core/extensions/screen_utils_extesion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTypography {
  static displayLarge({Color? color}) => GoogleFonts.russoOne(
        fontSize: 36.sp,
        fontWeight: FontWeight.w600,
        color: color ?? AppColors.secondaryColor,
      );
  static displayMedium({Color? color}) => GoogleFonts.russoOne(
        fontSize: 26.sp,
        fontWeight: FontWeight.w600,
        color: color ?? AppColors.secondaryColor,
      );
  static displaySmall({Color? color}) => GoogleFonts.russoOne(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: color ?? AppColors.secondaryColor,
      );

  static h2({Color? color}) => GoogleFonts.inter(
        fontSize: 36.sp,
        fontWeight: FontWeight.w600,
        color: color ?? AppColors.secondaryColor,
      );
  static h3(Color? color) => GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        color: color ?? AppColors.secondaryColor,
      );

  static h4(Color? color) => GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.secondaryColor,
      );

  static h5({Color? color}) => GoogleFonts.inter(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        color: color ?? AppColors.secondaryColor,
      );

  static subtitle1(Color? color, FontWeight fontWeight) => TextStyle(
        fontFamily: 'Sansation',
        fontSize: 16.sp,
        fontWeight: fontWeight,
        color: color ?? AppColors.secondaryColor,
      );
  static subtitle2(Color? color, FontWeight fontWeight) => TextStyle(
        fontFamily: 'Sansation',
        fontSize: 14.sp,
        fontWeight: fontWeight,
        color: color ?? AppColors.secondaryColor,
      );
  static subtitle3(Color? color, FontWeight fontWeight) => TextStyle(
        fontFamily: 'Sansation',
        fontSize: 12.sp,
        fontWeight: fontWeight,
        color: color ?? AppColors.secondaryColor,
      );

  static body1(Color? color) => TextStyle(
        fontFamily: 'Sansation',
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: color ?? AppColors.secondaryColor,
      );
}
