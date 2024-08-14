import 'package:flutter/material.dart';

import '../../atoms/tokens/app_colors.dart';

class StarAnimationWidget extends StatefulWidget {
  const StarAnimationWidget(
      {super.key,
      required this.isFavorited,
      required this.colorIsFavorited,
      required this.iconIsFavorited,
      required this.icon,
      this.valueIcon});
  final bool isFavorited;
  final Color colorIsFavorited;
  final IconData iconIsFavorited;
  final IconData icon;
  final String? valueIcon;

  @override
  State<StarAnimationWidget> createState() => _StarAnimationWidgetState();
}

class _StarAnimationWidgetState extends State<StarAnimationWidget> {
  bool isFavorited = false;

  @override
  void initState() {
    isFavorited = widget.isFavorited;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isFavorited = !isFavorited;
            });
          },
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: Icon(
              isFavorited ? widget.iconIsFavorited : widget.icon,
              key: ValueKey<bool>(isFavorited),
              color: isFavorited
                  ? widget.colorIsFavorited
                  : AppColors.secondaryColor,
            ),
          ),
        ),
        Text(
          widget.valueIcon ?? '',
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: AppColors.secondaryColor),
        )
      ],
    );
  }
}
