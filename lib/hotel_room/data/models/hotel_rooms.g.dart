// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HoteRoom _$$_HoteRoomFromJson(Map<String, dynamic> json) => _$_HoteRoom(
      rooms: (json['rooms'] as List<dynamic>?)
              ?.map((e) => Room.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_HoteRoomToJson(_$_HoteRoom instance) =>
    <String, dynamic>{
      'rooms': instance.rooms,
    };
