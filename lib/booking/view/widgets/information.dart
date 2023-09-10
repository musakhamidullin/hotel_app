import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../theme.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration:
          const BoxDecoration(color: Colors.white, borderRadius: borderRadius),
      child: Padding(
        padding: paddingWidgetVH,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Информация о клиенте',
              style: theme.textTheme.titleLarge,
            ),
            padding,
            TextFormField(
              keyboardType: TextInputType.phone,
              inputFormatters: [
                MaskTextInputFormatter(
                    mask: '+7 (###) ###-##-##', filter: {"#": RegExp(r'[0-9]')})
              ],
              decoration: const InputDecoration(
                labelText: 'Номер телефона',
                hintText: '+7 (___) ___-__-__',
              ),
            ),
            paddingDivided,
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              inputFormatters: [
                MaskTextInputFormatter(
                    filter: {"#": RegExp(r'[a-zA-Z0-9@.]')})
              ],
              decoration: const InputDecoration(
                labelText: 'Почта',
                hintText: 'example@mail.com',
              ),
            ),
            paddingDivided,
            Text(
              'Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту',
              style: theme.textTheme.titleMedium?.copyWith(color: grey),
            )
          ],
        ),
      ),
    );
  }
}
