part of 'booking_cubit.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState(
          {@Default(Status.unKnown) Status status,
          @Default(BookingState.defBooking) Booking booking,
          @Default(BookingState._mapTourists) Map<int, String> mapTourists,
          @Default([]) List<Tourist> tourists
          }) =
      _BookingState;

  static const defBooking = Booking();

  static const _mapTourists = {
    0: 'Первый турист',
    1: 'Второй турист',
    2: 'Третий турист',
    3: 'Четвертый турист',
    4: 'Пятый турист',
  };
}
