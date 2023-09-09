import 'package:flutter/material.dart';

import '../../../core/widgets/button.dart';
import '../../../core/widgets/carousel.dart';
import '../../../core/widgets/image.dart';
import '../../../core/widgets/peculiaritires.dart';
import '../../../theme.dart';
import '../../data/models/room.dart';

class RoomWidget extends StatelessWidget {
  const RoomWidget({
    super.key,
    required this.room,
    required this.callback,
  });

  final Room room;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration:
          const BoxDecoration(color: Colors.white, borderRadius: borderRadius),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          padding,
          CarouselWithIndicator(
              items: room.imageUrls.map((e) => ImageWidget(url: e)).toList()),
          padding,
          Padding(
            padding: paddingWidget,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  room.name,
                  style: theme.textTheme.titleLarge,
                ),
                PeculiaritiesWidget(peculiarities: room.peculiarities),
                paddingDivided,
                Row(
                  children: [
                    DecoratedBox(
                      decoration: const BoxDecoration(
                          color: blueWithOpacity,
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: Row(children: [
                          Text(
                            'Подробнее о номере',
                            style: theme.textTheme.titleMedium
                                ?.copyWith(color: blue),
                          ),
                          const Icon(
                            Icons.chevron_right_sharp,
                            color: blue,
                          )
                        ]),
                      ),
                    ),
                    const Spacer()
                  ],
                ),
                padding,
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'от ${room.price ~/ 1000} ${(room.price % 1000).toInt()} ₽',
                      style: theme.textTheme.headlineSmall),
                  TextSpan(
                      text: '  ${room.pricePer}',
                      style:
                          theme.textTheme.titleMedium?.copyWith(color: grey)),
                ])),
                padding,
                ButtonWidget(content: 'Выбрать номер', callback: callback),
                padding,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
