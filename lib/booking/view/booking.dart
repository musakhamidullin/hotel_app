import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/widgets/base.dart';
import '../../hotel/view/widgets/bottom.dart';
import '../../success/view/success.dart';
import '../../theme.dart';
import '../cubit/booking_cubit.dart';
import '../data/models/booking_api.dart';
import 'widgets/body.dart';
import 'widgets/header.dart';
import 'widgets/information.dart';
import 'widgets/price_infol.dart';
import 'widgets/tourist_card.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ColoredBox(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.05),
          appBar: AppBar(
            title: const Text('Бронирование'),
          ),
          body: BlocProvider(
            create: (_) => BookingCubit(BookingApi()),
            child: BlocBuilder<BookingCubit, BookingState>(
              builder: (context, state) {
                return BaseWidget(
                  status: state.status,
                  widget: ListView(
                    physics: const ClampingScrollPhysics(),
                    children: [
                      paddingDivided,
                      // todo обернуть все виджеты в boxdecorated
                      HeaderWidget(booking: state.booking),
                      paddingDivided,
                      BodyWidget(booking: state.booking),
                      paddingDivided,
                      const InformationWidget(),
                      paddingDivided,

                      const TouristCard(),
                      paddingDivided,
                      const TouristCard(),
                      paddingDivided,

                      PriceInfoWidget(booking: state.booking),
                      paddingDivided,

                      DecoratedBox(
                        decoration: const BoxDecoration(
                            borderRadius: borderRadius, color: Colors.white),
                        child: ListTile(
                            title: Text(
                              'Добавить туриста',
                              style: theme.textTheme.titleLarge,
                            ),
                            trailing: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: blue,
                                    borderRadius: BorderRadius.circular(12)),
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Icon(
                                    Icons.add,
                                    size: 32,
                                    color: Colors.white,
                                  ),
                                ))),
                      ),

                      paddingDivided,

                      BottomWidget(
                          content:
                              'Оплатить ${state.booking.totalPrice() ~/ 1000}  ${(state.booking.totalPrice() % 1000).toInt()} ₽',
                          callBack: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SuccessPage(),
                                ));
                          })
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
