import 'package:flutter/material.dart';

import '../../../theme.dart';

class TouristCard extends StatelessWidget {
  const TouristCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
        borderRadius: borderRadius,
        child: ExpansionTile(
            title: Text(
              'Первый турист',
              style: theme.textTheme.titleLarge,
            ),
            trailing: DecoratedBox(
                decoration: BoxDecoration(
                    color: blueWithOpacity,
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.expand_more,
                    size: 32,
                    color: blue,
                  ),
                ))));
  }
}
