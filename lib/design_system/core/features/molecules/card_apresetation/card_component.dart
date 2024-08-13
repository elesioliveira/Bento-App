import 'package:bento_app/design_system/core/features/molecules/label/label.dart';
import 'package:flutter/material.dart';
import '../../../extensions/screen_utils_extesion.dart';
import '../../atoms/tokens/app_colors.dart';

class CardApresentation extends StatelessWidget {
  const CardApresentation(
      {super.key, this.description, this.widget, this.descriptionTwo});
  final String? description;
  final String? descriptionTwo;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtilsHelpers.screenHeigth * 0.08,
      padding: EdgeInsets.only(left: 15.w),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DSLabel.subTitle(label: description ?? 'error'),
                DSLabel.subTitle(label: descriptionTwo ?? 'error')
              ],
            ),
          ),
          Positioned(
            bottom: -5,
            right: 0,
            child: widget ?? const SizedBox(),
          )
        ],
      ),
    );
  }
}
