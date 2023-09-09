import 'package:flutter/material.dart';

import '../../hotel/view/widgets/bottom.dart';
import '../../theme.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ColoredBox(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Заказ оплачен'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Stack(
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade300,
                        ),
                        child: Center(
                          child: Text(
                            '🎉',
                            style: theme.textTheme.bodyMedium
                                ?.copyWith(fontSize: 40),
                          ),
                        )),
                  ),
                ],
              ),
              padding,
              Text(
                'Ваш заказ принят в работу',
                style: theme.textTheme.titleLarge,
              ),
              padding,
              Text(
                'Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium?.copyWith(color: grey),
              ),
              const Spacer(),
              BottomWidget(content: 'Супер!', callBack: () {})
            ],
          ),
        ),
      ),
    );
  }
}
