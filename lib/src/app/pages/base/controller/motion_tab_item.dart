import 'package:bento_app/design_system/core/features/molecules/label/label.dart';
import 'package:flutter/material.dart';

const double iconOff = -3;
const double iconOnn = 0;
const double textOff = 3;
const double textOn = 1;
const double alphaOff = 0;
const double alphaOn = 1;
const int animDuration = 300;

class MotionTabItem extends StatefulWidget {
  final String? title;
  final bool selected;
  final IconData? iconData;
  final TextStyle textStyle;
  final Function callbackFunction;
  final Color tabIconColor;
  final double? tabIconSize;
  final Widget? badge;

  const MotionTabItem({
    super.key,
    required this.title,
    required this.selected,
    required this.iconData,
    required this.textStyle,
    required this.tabIconColor,
    required this.callbackFunction,
    this.tabIconSize = 24,
    this.badge,
  });

  @override
  MotionTabItemState createState() => MotionTabItemState();
}

class MotionTabItemState extends State<MotionTabItem> {
  double iconYAlign = iconOnn;
  double textYAlign = textOff;
  double iconAlpha = alphaOn;

  @override
  void initState() {
    super.initState();
    _setIconTextAlpha();
  }

  @override
  void didUpdateWidget(MotionTabItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    _setIconTextAlpha();
  }

  _setIconTextAlpha() {
    setState(() {
      iconYAlign = (widget.selected) ? iconOff : iconOnn;
      textYAlign = (widget.selected) ? textOn : textOff;
      iconAlpha = (widget.selected) ? alphaOff : alphaOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            child: AnimatedAlign(
              duration: const Duration(milliseconds: animDuration),
              alignment: Alignment(0, textYAlign),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DSLabel.description(label: widget.title!),
              ),
            ),
          ),
          InkWell(
            onTap: () => widget.callbackFunction(),
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: AnimatedAlign(
                duration: const Duration(milliseconds: animDuration),
                curve: Curves.easeIn,
                alignment: Alignment(0, iconYAlign),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: animDuration),
                  opacity: iconAlpha,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        padding: const EdgeInsets.all(0),
                        alignment: const Alignment(0, 0),
                        icon: Icon(
                          widget.iconData,
                          color: widget.tabIconColor,
                          size: widget.tabIconSize,
                        ),
                        onPressed: () => widget.callbackFunction(),
                      ),
                      widget.badge != null
                          ? Positioned(
                              top: 0,
                              right: 0,
                              child: widget.badge!,
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
