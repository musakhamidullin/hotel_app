part of 'booking_cubit.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState({
    @Default(Status.unKnown) Status status,
    @Default(BookingState.defBooking) Booking booking
  }) = _BookingState;

  static const defBooking = Booking();
}
