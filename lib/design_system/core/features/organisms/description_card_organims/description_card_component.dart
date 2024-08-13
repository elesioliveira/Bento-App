import 'package:flutter/material.dart';
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
        const Expanded(
          child: CardApresentation(
            description: 'ORDER',
            descriptionTwo: 'AGAIN',
          ),
        ),
        DSGaps.h12,
        Expanded(
          child: CardApresentation(
            description: 'ORDER',
            descriptionTwo: 'SHOP',
            widget: Icon(
              Icons.store_rounded,
              color: Colors.green[900],
              size: 50,
            ),
          ),
        ),
        DSGaps.h12,
      ],
    );
  }
}
