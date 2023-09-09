import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/core.dart';
import '../data/models/booking.dart';
import '../data/models/booking_api.dart';

part 'booking_state.dart';
part 'booking_cubit.freezed.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit(this.bookingApi) : super(const BookingState()){
    load();
  }

  final BookingApi bookingApi;

  void load() async {

    try{

      emit(state.copyWith(status: Status.loading));

      final data = await bookingApi.get();

      emit(state.copyWith(status: Status.success, booking: data));

    }catch(e){
      emit(state.copyWith(status: Status.failure));
    }
  }
}
