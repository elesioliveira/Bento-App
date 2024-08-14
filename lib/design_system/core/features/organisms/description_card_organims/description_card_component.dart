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
            widget: SvgPicture.asset(
              'lib/design_system/assets/icons/shoppingBag.svg',
              width: 50.w,
              height: 50.h,
            ),
          ),
        ),
        DSGaps.h12,
        Expanded(
          child: CardApresentation(
            description: 'LOCAL',
            descriptionTwo: 'SHOP',
            widget: SvgPicture.asset(
              'lib/design_system/assets/icons/shop.svg',
              width: 50.w,
              height: 50.h,
            ),
          ),
        ),
        DSGaps.h12,
      ],
    );
  }
}
