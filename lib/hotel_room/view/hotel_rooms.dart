import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../booking/view/booking.dart';
import '../../core/widgets/base.dart';
import '../../theme.dart';
import '../cubit/hotel_rooms_cubit.dart';
import '../data/models/hotel_room_api.dart';
import 'widgets/room.dart';

class HotelRoomsPage extends StatelessWidget {
  const HotelRoomsPage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: background,
          appBar: AppBar(title: Text(name)),
          body: BlocProvider<HotelRoomsCubit>(
            create: (_) => HotelRoomsCubit(HoteRoomApi()),
            child: BlocBuilder<HotelRoomsCubit, HotelRoomsState>(
              builder: (context, state) {
                return BaseWidget(
                  status: state.status,
                  widget: ListView.separated(
                      physics: const ClampingScrollPhysics(),
                      itemCount: state.hotelRooms.rooms.length,
                      separatorBuilder: (_, __) => padding,
                      itemBuilder: (context, i) => RoomWidget(
                            room: state.hotelRooms.rooms[i],
                            callback: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BookingPage()));
                            },
                          )),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
