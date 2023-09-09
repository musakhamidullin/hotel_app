import 'package:flutter/material.dart';

import '../../theme.dart';

class PeculiaritiesWidget extends StatelessWidget {
  const PeculiaritiesWidget({
    super.key,
    required this.peculiarities,
  });

  final List<String> peculiarities;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Wrap(
      children: peculiarities
          .map((e) => Padding(
                padding: const EdgeInsets.only(right: 8, top: 8),
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromRGBO(251, 251, 252, 1)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        e,
                        style:
                            theme.textTheme.titleMedium?.copyWith(color: grey),
                      ),
                    )),
              ))
          .toList(),
    );
  }
}
