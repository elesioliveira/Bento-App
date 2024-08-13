import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' hide SizeExtension;

class ScreenUtilApp extends StatelessWidget {
  const ScreenUtilApp({
    required this.child,
    super.key,
    this.designSize = const Size(360, 760),
    this.minTextAdapt = false,
    this.splitScreenMode = false,
  });

  final Widget child;
  final Size designSize;
  final bool minTextAdapt;
  final bool splitScreenMode;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      key: key,
      designSize: designSize,
      minTextAdapt: minTextAdapt,
      splitScreenMode: splitScreenMode,
      builder: (context, child) => child ?? const SizedBox(),
      child: child,
    );
  }
}
