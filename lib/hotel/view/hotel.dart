import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/widgets/base.dart';
import '../../theme.dart';
import '../cubit/hotel_cubit.dart';
import '../data/models/hotel_api.dart';
import 'widgets/body.dart';
import 'widgets/bottom.dart';
import 'widgets/header.dart';

class HotelsPage extends StatelessWidget {
  const HotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.05),
          appBar: AppBar(
            title: const Text('Отель'),
          ),
          body: BlocProvider(
            create: (_) => HotelCubit(HotelApi()),
            child: BlocBuilder<HotelCubit, HotelState>(
              builder: (context, state) {
                return BaseWidget(
                  widget: ListView(
                    children: [
                      HeaderWidget(hotel: state.hotel),
                      paddingDivided,
                      BodyWidget(aboutHotel: state.hotel.aboutTheHotel),
                      paddingDivided,
      
                      BottomWidget(
                        callBack: (){},
                        content: 'К выбору места',
                      )
                    ],
                  ),
                  status: state.status,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
