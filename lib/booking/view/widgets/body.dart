import 'package:flutter/material.dart';

import '../../../theme.dart';
import '../../data/models/booking.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key, required this.booking});

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: paddingWidgetVH,
        child: Table(
          children: [
            TableRow(children: [
              Text('Вылет из',
                  style: theme.textTheme.titleMedium?.copyWith(color: grey)),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  booking.departure,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ]),
            TableRow(children: [
              Text('Страна, город',
                  style: theme.textTheme.titleMedium?.copyWith(color: grey)),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  booking.arrivalCountry,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ]),
            TableRow(children: [
              Text('Даты',
                  style: theme.textTheme.titleMedium?.copyWith(color: grey)),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  '${booking.tourDateStart} - ${booking.tourDateStop}',
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ]),
            TableRow(children: [
              Text('Кол-во ночей',
                  style: theme.textTheme.titleMedium?.copyWith(color: grey)),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  booking.numberOfNights.toString(),
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ]),
            TableRow(children: [
              Text('Номер',
                  style: theme.textTheme.titleMedium?.copyWith(color: grey)),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  booking.room,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ]),
            TableRow(children: [
              Text('Питание',
                  style: theme.textTheme.titleMedium?.copyWith(color: grey)),
              Text(
                booking.nutrition,
                style: theme.textTheme.titleMedium,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
