import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../atoms/tokens/app_colors.dart';
import '../../molecules/label/label.dart';

class DescriptionModeComponent extends StatelessWidget {
  const DescriptionModeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DSLabel.h4(label: 'Today\'s Special'),
          DSLabel.subtitle2Regular(
            label: 'See all',
            color: AppColors.primaryColor,
          )
        ],
      ),
    );
  }
}
