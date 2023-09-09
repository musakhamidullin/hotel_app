
import 'package:flutter/material.dart';

import '../../../theme.dart';
import '../../data/models/booking.dart';


class RateWidget extends StatelessWidget {
  const RateWidget({
    super.key,
    required this.booking,
  });

  final Booking booking;

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
                  '${booking.horating} ${booking.ratingName}',
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
