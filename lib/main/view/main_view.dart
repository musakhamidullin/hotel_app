
import 'package:flutter/material.dart';

import '../../hotel/view/hotel.dart';
import '../../theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: const HotelsPage()
    );
  }
}
