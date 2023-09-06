import 'package:flutter/material.dart';

import '../data/models/status.dart';

import 'failure.dart';
import 'loading.dart';

// ignore: must_be_immutable
class BaseWidget extends StatelessWidget {
  BaseWidget(
      {Key? key,
      required this.widget,
      required this.status,
      this.onFailurePressedButton,
      this.loadingWidget})
      : super(key: key);

  /// may be shimmer 
  final Widget? loadingWidget;
  Widget widget;
  final Status status;
  final VoidCallback? onFailurePressedButton;

  @override
  Widget build(BuildContext context) {
    return widget = switch (status) {
      Status.unKnown => const SizedBox.shrink(),
      Status.success => widget,
      Status.loading => loadingWidget ?? const LoadingWidget(),
      Status.failure => FailureWidget(
          onPressed: () => onFailurePressedButton?.call(),
        ),
    };
  }
}