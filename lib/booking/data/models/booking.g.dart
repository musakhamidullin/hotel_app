// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Booking _$$_BookingFromJson(Map<String, dynamic> json) => _$_Booking(
      id: json['id'] as int? ?? 0,
      hotelName: json['hotel_name'] as String? ?? '',
      hotelAdress: json['hotel_adress'] as String? ?? '',
      horating: json['horating'] as int? ?? 0,
      ratingName: json['rating_name'] as String? ?? '',
      departure: json['departure'] as String? ?? '',
      arrivalCountry: json['arrival_country'] as String? ?? '',
      tourDateStart: json['tour_date_start'] as String? ?? '',
      tourDateStop: json['tour_date_stop'] as String? ?? '',
      numberOfNights: json['number_of_nights'] as int? ?? 0,
      room: json['room'] as String? ?? '',
      nutrition: json['nutrition'] as String? ?? '',
      tourPrice: json['tour_price'] as int? ?? 0,
      fuelCharge: json['fuel_charge'] as int? ?? 0,
      serviceCharge: json['service_charge'] as int? ?? 0,
    );

Map<String, dynamic> _$$_BookingToJson(_$_Booking instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotel_name': instance.hotelName,
      'hotel_adress': instance.hotelAdress,
      'horating': instance.horating,
      'rating_name': instance.ratingName,
      'departure': instance.departure,
      'arrival_country': instance.arrivalCountry,
      'tour_date_start': instance.tourDateStart,
      'tour_date_stop': instance.tourDateStop,
      'number_of_nights': instance.numberOfNights,
      'room': instance.room,
      'nutrition': instance.nutrition,
      'tour_price': instance.tourPrice,
      'fuel_charge': instance.fuelCharge,
      'service_charge': instance.serviceCharge,
    };
