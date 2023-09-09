import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key, required this.content, required this.callback});

  final String content;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
        height: 56,
        width: double.infinity,
        child: ElevatedButton(
            onPressed: callback,
            child: Text(
              content,
              style: theme.textTheme.titleMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),
            )));
  }
}
