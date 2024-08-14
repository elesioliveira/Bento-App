import 'package:bento_app/design_system/core/features/molecules/label/label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../atoms/tokens/app_colors.dart';

class IconQualitityProduct extends StatelessWidget {
  const IconQualitityProduct(
      {super.key, required this.urlImg, this.color, this.infoProduct});
  final String urlImg;
  final Color? color;
  final String? infoProduct;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50.w,
          height: 50.h,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          child: SvgPicture.asset(
            urlImg,
            width: 30.w,
            height: 30.h,
          ),
        ),
        DSLabel.description(
          label: infoProduct ?? 'error',
          color: AppColors.secondaryColor,
        )
      ],
    );
  }
}
