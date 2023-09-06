import 'package:freezed_annotation/freezed_annotation.dart';

import 'room.dart';

part 'hotel_rooms.freezed.dart';
part 'hotel_rooms.g.dart';

@freezed
class HoteRoom with _$HoteRoom {
  const factory HoteRoom({
    @JsonKey(name: "rooms") @Default([]) List<Room> rooms,
  }) = _HoteRoom;

  factory HoteRoom.fromJson(Map<String, dynamic> json) =>
      _$HoteRoomFromJson(json);
}
