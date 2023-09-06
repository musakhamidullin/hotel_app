import 'package:freezed_annotation/freezed_annotation.dart';

import 'about_hotel.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';

@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    @JsonKey(name: "id") @Default(0) int id,
    @JsonKey(name: "name") @Default('') String name,
    @JsonKey(name: "adress") @Default('') String adress,
    @JsonKey(name: "minimal_price") @Default(0) int minimalPrice,
    @JsonKey(name: "price_for_it") @Default('') String priceForIt,
    @JsonKey(name: "rating") @Default(0) int rating,
    @JsonKey(name: "rating_name") @Default('') String ratingName,
    @JsonKey(name: "image_urls") @Default([]) List<String> imageUrls,
    @JsonKey(name: "about_the_hotel")
    @Default(Hotel.defAboutHotel)
    AboutHotel aboutTheHotel,
  }) = _Hotel;

  static const defAboutHotel = AboutHotel();

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}
