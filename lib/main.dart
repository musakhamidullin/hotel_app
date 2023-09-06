import 'dart:async';

import 'package:flutter/material.dart';

import 'main/view/main_view.dart';

void main() {
  runZonedGuarded(() => runApp(const MainApp()), (error, stack) {
    debugPrint(stack.toString());
  });
}
