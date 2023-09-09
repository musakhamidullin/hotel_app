import 'package:flutter/material.dart';

import '../../../theme.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius
      ),
      child: Padding(
        padding: paddingWidgetVH,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Информация о клиенте', style: theme.textTheme.titleLarge,),
            padding,
            const TextField(
              
              decoration: InputDecoration(
                hintText: 'Номер телефона',
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            
            paddingDivided,
      
            const TextField(
              
              decoration: InputDecoration(
                hintText: 'Почта',
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),

            paddingDivided,
      
            Text('Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту', style: theme.textTheme.titleMedium?.copyWith(color: grey),)
          ],
        ),
      ),
    );
  }
}
