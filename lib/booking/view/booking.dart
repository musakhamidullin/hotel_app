import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/widgets/base.dart';
import '../../core/widgets/card_base.dart';
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

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final ScrollController _controller = ScrollController();

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
              buildWhen: (previous, current) =>
                  previous.status != current.status,
              builder: (context, state) {
                return BaseWidget(
                  status: state.status,
                  widget: ListView(
                    controller: _controller,
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

                      BlocBuilder<BookingCubit, BookingState>(
                        buildWhen: (previous, current) =>
                            previous.tourists.length != current.tourists.length,
                        builder: (context, state) {
                          return ListView.separated(
                            controller: _controller,
                            shrinkWrap: true,
                            separatorBuilder: (context, index) =>
                                paddingDivided,
                            itemCount: state.tourists.length,
                            itemBuilder: (context, i) => TouristCard(
                              content: state.mapTourists[i] ?? '',
                            ),
                          );
                        },
                      ),

                      paddingDivided,

                      PriceInfoWidget(booking: state.booking),
                      paddingDivided,

                      CardWidget(
                        widget: ListTile(
                            onTap: () {
                              context.read<BookingCubit>().addTourist();
                            },
                            title: Text(
                              'Добавить туриста',
                              style: theme.textTheme.titleLarge,
                            ),
                            trailing: CardWidget(
                              customBorderRadius: BorderRadius.circular(12),
                              customColor: blue,
                              widget: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Icon(
                                  Icons.add,
                                  size: 32,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),

                      paddingDivided,

                      BottomWidget(
                          content: 'Оплатить ${state.booking.totalPrice()}',
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
