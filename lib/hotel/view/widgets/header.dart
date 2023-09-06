import 'package:flutter/material.dart';

import '../../data/models/hotel.dart';
import 'carousel.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key, required this.hotel});

  final Hotel hotel;

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselWithIndicator(
          items: widget.hotel.imageUrls.map((e) => Image.network(e)).toList(),
        )
      ],
    );
  }
}
