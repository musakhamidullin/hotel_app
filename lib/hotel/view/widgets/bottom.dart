import 'package:flutter/material.dart';

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
          ),
          padding,
          Padding(
            padding: paddingWidgetDivided,
            child: SizedBox(
                height: 56,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => callBack, child: Text(content))),
          ),
          padding,
        ],
      ),
    );
  }
}
