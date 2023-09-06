// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hotel _$$_HotelFromJson(Map<String, dynamic> json) => _$_Hotel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      adress: json['adress'] as String? ?? '',
      minimalPrice: json['minimal_price'] as int? ?? 0,
      priceForIt: json['price_for_it'] as String? ?? '',
      rating: json['rating'] as int? ?? 0,
      ratingName: json['rating_name'] as String? ?? '',
      imageUrls: (json['image_urls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      aboutTheHotel: json['about_the_hotel'] == null
          ? Hotel.defAboutHotel
          : AboutHotel.fromJson(
              json['about_the_hotel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HotelToJson(_$_Hotel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adress': instance.adress,
      'minimal_price': instance.minimalPrice,
      'price_for_it': instance.priceForIt,
      'rating': instance.rating,
      'rating_name': instance.ratingName,
      'image_urls': instance.imageUrls,
      'about_the_hotel': instance.aboutTheHotel,
    };
