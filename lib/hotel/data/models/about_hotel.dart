import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_hotel.freezed.dart';
part 'about_hotel.g.dart';

@freezed
class AboutHotel with _$AboutHotel {
  const factory AboutHotel({
    @JsonKey(name: "description") @Default('') String description,
    @JsonKey(name: "peculiarities") @Default([]) List<String> peculiarities,
  }) = _AboutHotel;

  factory AboutHotel.fromJson(Map<String, dynamic> json) =>
      _$AboutHotelFromJson(json);
}
