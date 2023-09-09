import 'package:flutter/material.dart';

import '../../../core/widgets/button.dart';
import '../../../theme.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget(
      {super.key, required this.content, required this.callBack});

  final String content;
  final VoidCallback callBack;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        children: [
          const Divider(
            height: 0,
            color: Colors.black12,
          ),
          padding,
          Padding(
            padding: paddingWidget,
            child: ButtonWidget(content: content, callback: callBack),
          ),
          padding,
        ],
      ),
    );
  }
}
