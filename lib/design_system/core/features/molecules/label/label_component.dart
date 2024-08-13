import 'package:flutter/material.dart';

class LabelComponent extends StatelessWidget {
  final String label;
  final Color? color;
  final TextStyle style;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  const LabelComponent({
    super.key,
    required this.label,
    this.color,
    required this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: style,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}
