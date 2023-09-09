import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {

  const Room._();

  const factory Room({
    @JsonKey(name: "id") @Default(0) int id,
    @JsonKey(name: "name") @Default('') String name,
    @JsonKey(name: "price") @Default(0) int price,
    @JsonKey(name: "price_per") @Default('') String pricePer,
    @JsonKey(name: "peculiarities") @Default([]) List<String> peculiarities,
    @JsonKey(name: "image_urls") @Default([]) List<String> imageUrls,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);

  String getPrice () => 'от ${price ~/ 1000} ${(price % 1000)} ₽';
}
