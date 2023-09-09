import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@freezed
class Booking with _$Booking {
  const Booking._();

  const factory Booking({
    @JsonKey(name: "id") @Default(0) int id,
    @JsonKey(name: "hotel_name") @Default('') String hotelName,
    @JsonKey(name: "hotel_adress") @Default('') String hotelAdress,
    @JsonKey(name: "horating") @Default(0) int horating,
    @JsonKey(name: "rating_name") @Default('') String ratingName,
    @JsonKey(name: "departure") @Default('') String departure,
    @JsonKey(name: "arrival_country") @Default('') String arrivalCountry,
    @JsonKey(name: "tour_date_start") @Default('') String tourDateStart,
    @JsonKey(name: "tour_date_stop") @Default('') String tourDateStop,
    @JsonKey(name: "number_of_nights") @Default(0) int numberOfNights,
    @JsonKey(name: "room") @Default('') String room,
    @JsonKey(name: "nutrition") @Default('') String nutrition,
    @JsonKey(name: "tour_price") @Default(0) int tourPrice,
    @JsonKey(name: "fuel_charge") @Default(0) int fuelCharge,
    @JsonKey(name: "service_charge") @Default(0) int serviceCharge,
  }) = _Booking;

  String get getTour => '${tourPrice ~/ 1000} ${(tourPrice % 1000).toInt()} ₽';

  String get getFuel => '${fuelCharge ~/ 1000} ${(fuelCharge % 1000).toInt()} ₽';

  String get getServiceCharge => '${serviceCharge ~/ 1000} ${(serviceCharge % 1000).toInt()} ₽';

  String totalPrice() {
    final value = tourPrice + fuelCharge + serviceCharge;

    return '${value ~/ 1000} ${value % 1000} ₽';
  }

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);
}
