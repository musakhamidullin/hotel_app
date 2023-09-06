// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AboutHotel _$$_AboutHotelFromJson(Map<String, dynamic> json) =>
    _$_AboutHotel(
      description: json['description'] as String? ?? '',
      peculiarities: (json['peculiarities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_AboutHotelToJson(_$_AboutHotel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'peculiarities': instance.peculiarities,
    };
