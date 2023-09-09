import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/core.dart';
import '../data/models/hotel_room_api.dart';
import '../data/models/hotel_rooms.dart';

part 'hotel_rooms_state.dart';
part 'hotel_rooms_cubit.freezed.dart';

class HotelRoomsCubit extends Cubit<HotelRoomsState> {
  HotelRoomsCubit(this.hoteRoomApi) : super(const HotelRoomsState()){
    load();
  }

  final HoteRoomApi hoteRoomApi;

  void load() async {
    try {
      emit(state.copyWith(status: Status.loading));

      final data = await hoteRoomApi.get();

      emit(state.copyWith(status: Status.success, hotelRooms: data));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }
}
