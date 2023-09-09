import 'package:flutter/material.dart';

import '../../../theme.dart';
import '../../data/models/booking.dart';

class PriceInfoWidget extends StatelessWidget {
  const PriceInfoWidget({super.key, required this.booking});

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration:
          const BoxDecoration(borderRadius: borderRadius, color: Colors.white),
      child: Padding(
        padding: paddingWidgetVH,
        child: Table(
          children: [
            TableRow(children: [
              Text('Тур',
                  style: theme.textTheme.titleMedium?.copyWith(color: grey)),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  booking.getTour,
                  textAlign: TextAlign.end,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ]),
            TableRow(children: [
              Text('Топливный сбор',
                  style: theme.textTheme.titleMedium?.copyWith(color: grey)),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child:  Text(
                  booking.getFuel,
                  textAlign: TextAlign.end,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ]),
            TableRow(children: [
              Text('Сервисный сбор',
                  style: theme.textTheme.titleMedium?.copyWith(color: grey)),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  booking.getServiceCharge,
                  textAlign: TextAlign.end,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ]),
            TableRow(children: [
              Text('К оплате',
                  style: theme.textTheme.titleMedium?.copyWith(color: grey)),
              Text(
                booking.totalPrice(),
                textAlign: TextAlign.end,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: blue,
                  fontWeight: FontWeight.bold
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
