import 'package:bento_app/design_system/core/extensions/screen_utils_extesion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTypography {
  static title({Color? color}) => GoogleFonts.raleway(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        color: color ?? AppColors.secondaryColor,
      );
  static subTitle({Color? color}) => GoogleFonts.raleway(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        color: color ?? AppColors.secondaryColor,
      );
  static description({Color? color, double? sizeFont}) => GoogleFonts.raleway(
        fontWeight: FontWeight.bold,
        fontSize: sizeFont,
        fontStyle: FontStyle.normal,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        color: color ?? AppColors.secondaryColor,
      );
  static infoDescription({Color? color, TextDecoration? decoration}) =>
      GoogleFonts.raleway(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: color ?? AppColors.secondaryColor,
          textStyle: TextStyle(decoration: decoration));
}
