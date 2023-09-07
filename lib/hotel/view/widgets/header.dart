import 'package:flutter/material.dart';

import '../../../theme.dart';
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
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: radius,
          bottomRight: radius
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselWithIndicator(
            items: widget.hotel.imageUrls
                .map((e) => ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      e,
                      fit: BoxFit.cover,
                    )))
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
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold
                  ),
                ),
                padding,
                Text(
                  widget.hotel.adress,
                  style:
                      theme.textTheme.titleMedium?.copyWith(color: Colors.blue),
                ),
                padding2x,
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'от ${widget.hotel.minimalPrice} ₽',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold
                      )),
                  TextSpan(
                      text: '  ${widget.hotel.priceForIt}',
                      style: theme.textTheme.titleLarge
                          ?.copyWith(color: grey)),
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

class RateWidget extends StatelessWidget {
  const RateWidget({
    super.key,
    required this.hotel,
  });

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
              color: rateColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(Icons.star, color: rateColor),
                const SizedBox(width: 4),
                Text(
                  '${hotel.rating} ${hotel.ratingName}',
                  style:
                      theme.textTheme.titleMedium?.copyWith(color: rateColor),
                )
              ],
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
