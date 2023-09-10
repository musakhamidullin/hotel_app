import 'package:flutter/material.dart';

import '../../../core/widgets/card_base.dart';
import '../../../theme.dart';

class TouristCard extends StatefulWidget {
  const TouristCard({
    super.key, required this.content,
  });

  final String content; 

  @override
  State<TouristCard> createState() => _TouristCardState();
}

class _TouristCardState extends State<TouristCard> {
  bool _isExpansed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ExpansionTile(
      onExpansionChanged: (value) => setState(() {
        _isExpansed = value;
      }),
      title: Text(
        widget.content,
        style: theme.textTheme.titleLarge,
      ),
      trailing: CardWidget(
        customBorderRadius: BorderRadius.circular(12),
        customColor: blueWithOpacity,
        widget: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(
            _isExpansed ? Icons.expand_more : Icons.expand_less,
            size: 32,
            color: blue,
          ),
        ),
      ),
      children: [
        TextFormField(
          decoration: InputDecoration(hintText: 'Имя'),
        ),
        paddingDivided,
        TextFormField(
          decoration: InputDecoration(hintText: 'Фамилия'),
        ),
        paddingDivided,
        TextFormField(
          decoration: InputDecoration(hintText: 'Дата рождения'),
        ),
        paddingDivided,
        TextFormField(
          decoration: InputDecoration(hintText: 'Гражданство'),
        ),
        paddingDivided,
        TextFormField(
          decoration: InputDecoration(hintText: 'Номер загранпаспорта'),
        ),
        paddingDivided,
        TextFormField(
          decoration: InputDecoration(hintText: 'Срок действия загранпаспорта'),
        )
      ],
    );
  }
}
