import 'package:flutter/material.dart';

import '../../../core/widgets/image.dart';
import '../../../hotel_room/view/widgets/rate.dart';
import '../../../theme.dart';
import '../../data/models/hotel.dart';
import '../../../core/widgets/carousel.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key, required this.hotel});

  final Hotel hotel;

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.only(bottomLeft: radius, bottomRight: radius)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselWithIndicator(
            items: widget.hotel.imageUrls
                .map((e) => ImageWidget(
                      url: e,
                    ))
                .toList(),
          ),
          Padding(
            padding: paddingWidget,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                padding,
                RateWidget(hotel: widget.hotel),
                padding,
                Text(
                  widget.hotel.name,
                  style: theme.textTheme.titleLarge,
                ),
                padding,
                Text(
                  widget.hotel.adress,
                  style: theme.textTheme.titleMedium?.copyWith(color: blue),
                ),
                padding,
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'от ${widget.hotel.minimalPrice ~/ 1000} ${widget.hotel.minimalPrice % 1000} ₽',
                      style: theme.textTheme.headlineSmall),
                  TextSpan(
                      text: '    ${widget.hotel.priceForIt}',
                      style:
                          theme.textTheme.titleMedium?.copyWith(color: grey)),
                ])),
                padding,
              ],
            ),
          )
        ],
      ),
    );
  }
}
