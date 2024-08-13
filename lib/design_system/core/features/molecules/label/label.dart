import 'package:flutter/material.dart';

import '../../atoms/tokens/app_typography.dart';
import 'label_component.dart';

class DSLabel extends LabelComponent {
  DSLabel.displayLarge({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
  }) : super(
          style: AppTypography.displayLarge(color: color),
        );
  DSLabel.displayMedium({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
  }) : super(
          style: AppTypography.displayMedium(color: color),
        );
  DSLabel.displaySmall({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
  }) : super(
          style: AppTypography.displaySmall(color: color),
        );

  DSLabel.h2({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
    super.textAlign,
  }) : super(
          style: AppTypography.h2(color: color),
        );

  DSLabel.h3({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
    super.textAlign,
  }) : super(
          style: AppTypography.h3(color),
        );

  DSLabel.h4({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
  }) : super(
          style: AppTypography.h4(color),
        );

  DSLabel.h5({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
  }) : super(
          style: AppTypography.h5(color: color),
        );

  DSLabel.subtitle1Bold({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
  }) : super(
          style: AppTypography.subtitle1(color, FontWeight.bold),
        );
  DSLabel.subtitle1Regular({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
  }) : super(
          style: AppTypography.subtitle1(color, FontWeight.w400),
        );

  DSLabel.subtitle2Bold({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
  }) : super(
          style: AppTypography.subtitle2(color, FontWeight.w600),
        );

  DSLabel.subtitle2Regular({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
    super.textAlign,
  }) : super(
          style: AppTypography.subtitle1(color, FontWeight.bold),
        );

  DSLabel.subtitle3Bold({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
    super.textAlign,
  }) : super(
          style: AppTypography.subtitle3(color, FontWeight.w600),
        );

  DSLabel.subtitle3Regular({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
    super.textAlign,
  }) : super(
          style: AppTypography.subtitle1(color, FontWeight.w400),
        );

  DSLabel.body1({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
  }) : super(
          style: AppTypography.body1(color),
        );
}
