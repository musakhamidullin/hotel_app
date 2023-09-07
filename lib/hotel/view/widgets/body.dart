import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../theme.dart';
import '../../data/models/about_hotel.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key, required this.aboutHotel});

  final AboutHotel aboutHotel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: paddingWidget,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              padding,
              Text(
                'Об отеле',
                style: theme.textTheme.titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              paddingDivided,
              Wrap(
                children: aboutHotel.peculiarities
                    .map((e) => Padding(
                          padding: const EdgeInsets.only(right: 8, top: 8),
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color:
                                      const Color.fromRGBO(251, 251, 252, 1)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  e,
                                  style: theme.textTheme.titleMedium
                                      ?.copyWith(color: grey),
                                ),
                              )),
                        ))
                    .toList(),
              ),
              padding,
              Text(
                aboutHotel.description,
                style: theme.textTheme.titleMedium,
              ),
              padding,
              Padding(
                padding: paddingWidgetDivided,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromRGBO(251, 251, 252, 1)),
                  child: Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icons/emoji-happy.svg',
                          height: 32,
                        ),
                        title: const Text('Удобства'),
                        subtitle: const Text('Самое необходимое'),
                        trailing: const Icon(Icons.chevron_right_rounded),
                      ),
                      const Divider(
                        height: 0,
                        indent: 70,
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icons/tick-square.svg',
                          height: 32,
                        ),
                        title: const Text('Удобства'),
                        subtitle: const Text('Самое необходимое'),
                        trailing: const Icon(Icons.chevron_right_rounded),
                      ),
                      const Divider(
                        height: 0,
                        indent: 70,
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          'assets/icons/close-square.svg',
                          height: 32,
                        ),
                        title: const Text('Удобства'),
                        subtitle: const Text('Самое необходимое'),
                        trailing: const Icon(Icons.chevron_right_rounded),
                      )
                    ],
                  ),
                ),
              ),
              padding
            ],
          ),
        ),
      ),
    );
  }
}
