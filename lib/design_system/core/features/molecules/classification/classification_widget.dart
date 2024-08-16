import 'package:flutter/material.dart';

import '../../../extensions/screen_utils_extesion.dart';
import '../label/label.dart';

class ClassificationWidget extends StatelessWidget {
  const ClassificationWidget({super.key, required this.titleDescription});
  final String titleDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtilsHelpers.screenWidth,
      padding: EdgeInsets.only(left: 10.w),
      child: Align(
        alignment: Alignment.centerLeft,
        child: DSLabel.subTitle(label: titleDescription),
      ),
    );
  }
}
