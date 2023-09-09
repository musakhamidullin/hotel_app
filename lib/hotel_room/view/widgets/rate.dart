
import 'package:flutter/material.dart';

import '../../../core/widgets/card_base.dart';
import '../../../hotel/data/models/hotel.dart';
import '../../../theme.dart';

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
        CardWidget(
          customBorderRadius: BorderRadius.circular(10),
          customColor: rateColor.withOpacity(0.2),
          widget: Padding(
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
