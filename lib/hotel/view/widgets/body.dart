import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/widgets/card_base.dart';
import '../../../core/widgets/peculiaritires.dart';
import '../../../theme.dart';
import '../../data/models/about_hotel.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key, required this.aboutHotel});

  final AboutHotel aboutHotel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CardWidget(
      widget: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: paddingWidget,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              padding,
              Text(
                'Об отеле',
                style: theme.textTheme.titleLarge,
              ),
              paddingDivided,
              PeculiaritiesWidget(peculiarities: aboutHotel.peculiarities),
              padding,
              Text(
                aboutHotel.description,
                style: theme.textTheme.titleMedium,
              ),
              padding,
              CardWidget(
                customBorderRadius: BorderRadius.circular(12),
                customColor: background,
                widget: Column(
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
                    dividerListTile,
                    ListTile(
                      leading: SvgPicture.asset(
                        'assets/icons/tick-square.svg',
                        height: 32,
                      ),
                      title: const Text('Удобства'),
                      subtitle: const Text('Самое необходимое'),
                      trailing: const Icon(Icons.chevron_right_rounded),
                    ),
                    dividerListTile,
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
              padding
            ],
          ),
        ),
      ),
    );
  }
}
