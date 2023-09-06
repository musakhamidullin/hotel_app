import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/widgets/base.dart';
import '../cubit/hotel_cubit.dart';
import '../data/models/hotel_api.dart';
import 'widgets/header.dart';

class HotelsPage extends StatelessWidget {
  const HotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Отель'),
      ),
      body: BlocProvider(
        create: (_) => HotelCubit(HotelApi()),
        child: BlocBuilder<HotelCubit, HotelState>(
          builder: (context, state) {
            return BaseWidget(
              widget: Column(
                children: [
                  HeaderWidget(hotel: state.hotel),
                ],
              ),
              status: state.status,
            );
          },
        ),
      ),
    );
  }
}
