import 'package:flutter/material.dart';

import '../../../core/widgets/card_base.dart';
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
            trailing: CardWidget(
              customBorderRadius: BorderRadius.circular(12),
              customColor: blueWithOpacity,
              widget: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(
                  Icons.expand_more,
                  size: 32,
                  color: blue,
                ),
              ),
            )));
  }
}
