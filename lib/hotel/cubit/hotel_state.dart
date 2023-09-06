part of 'hotel_cubit.dart';

@freezed
class HotelState with _$HotelState {
  const factory HotelState({
    @Default(Status.unKnown) Status status,
    @Default(HotelState.defaultHotel) Hotel hotel
  }) = _HotelState;

  static const defaultHotel = Hotel();
}
