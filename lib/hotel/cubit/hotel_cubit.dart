import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/core.dart';
import '../data/models/hotel.dart';
import '../data/models/hotel_api.dart';

part 'hotel_state.dart';
part 'hotel_cubit.freezed.dart';

class HotelCubit extends Cubit<HotelState> {
  HotelCubit(this.api) : super(const HotelState()){
    load();
  }

  final HotelApi api;

  void load() async {
    try {
      emit(state.copyWith(status: Status.loading));

      final data = await api.get();

      emit(state.copyWith(status: Status.success, hotel: data));
    } catch (e) {
      
      emit(state.copyWith(status: Status.failure));
    }
  }
}
