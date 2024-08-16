import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../atoms/tokens/app_colors.dart';
import '../../atoms/tokens/gaps.dart';
import '../../molecules/label/label.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DSLabel.subTitle(
                label: 'Delivery',
              ),
              Row(
                children: [
                  DSLabel.infoDescription(
                    label: 'Bacangan, Sambit',
                    color: Colors.grey.shade600,
                  ),
                  DSGaps.h2,
                  Icon(
                    size: 18.h,
                    Icons.keyboard_arrow_down,
                    color: AppColors.secondaryColor,
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12, right: 15, bottom: 12),
          child: CircleAvatar(
            backgroundColor: AppColors.vegetarianColor,
            child: SvgPicture.asset(
              'lib/design_system/assets/person_icons/girl.svg',
              width: 20.w,
              height: 20.h,
            ),
          ),
        )
      ],
    );
  }
}
