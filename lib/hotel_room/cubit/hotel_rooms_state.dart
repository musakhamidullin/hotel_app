part of 'hotel_rooms_cubit.dart';

@freezed
class HotelRoomsState with _$HotelRoomsState {
  const factory HotelRoomsState({
    @Default(Status.unKnown) Status status,
    @Default(HotelRoomsState.defHotel) HoteRoom hotelRooms 
  }) = _HotelRoomsState;

  static const defHotel = HoteRoom();
}
