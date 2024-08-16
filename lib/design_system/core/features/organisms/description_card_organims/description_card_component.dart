import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../atoms/tokens/gaps.dart';
import '../../molecules/card_apresetation/card_component.dart';

class DescriptionCardComponent extends StatelessWidget {
  const DescriptionCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DSGaps.h12,
        Expanded(
          child: CardApresentation(
            description: 'ORDER',
            descriptionTwo: 'AGAIN',
            bottom: -2.h,
            right: -1,
            widget: SvgPicture.asset(
              'lib/design_system/assets/icons/bagShopping.svg',
              width: 60.w,
              height: 60.h,
            ),
          ),
        ),
        DSGaps.h12,
        Expanded(
          child: CardApresentation(
            description: 'LOCAL',
            descriptionTwo: 'SHOP',
            bottom: -1.1.h,
            right: -1.w,
            widget: SvgPicture.asset(
              'lib/design_system/assets/icons/shop.svg',
              width: 65.w,
              height: 65.h,
            ),
          ),
        ),
        DSGaps.h12,
      ],
    );
  }
}
