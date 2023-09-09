import 'package:flutter/material.dart';

import '../../../theme.dart';
import '../../data/models/booking.dart';
import 'rate.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.booking});

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration:
          const BoxDecoration(color: Colors.white, borderRadius: borderRadius),
      child: Padding(
        padding: paddingWidget,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            padding,
            RateWidget(
              booking: booking,
            ),
            padding,
            Text(
              booking.hotelName,
              style: theme.textTheme.titleLarge,
            ),
            padding,
            Text(
              booking.hotelAdress,
              style: theme.textTheme.titleMedium?.copyWith(color: blue),
            ),
            padding
          ],
        ),
      ),
    );
  }
}
