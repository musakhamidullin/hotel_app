import 'package:flutter/material.dart';

import '../../theme.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      required this.widget,
      this.customBorderRadius,
      this.customColor});

  final Widget widget;
  final BorderRadius? customBorderRadius;
  final Color? customColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            color: customColor ?? Colors.white,
            borderRadius: customBorderRadius ?? borderRadius),
        child: widget);
  }
}
