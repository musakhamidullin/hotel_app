// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hotel _$HotelFromJson(Map<String, dynamic> json) {
  return _Hotel.fromJson(json);
}

/// @nodoc
mixin _$Hotel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "adress")
  String get adress => throw _privateConstructorUsedError;
  @JsonKey(name: "minimal_price")
  int get minimalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "price_for_it")
  String get priceForIt => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "rating_name")
  String get ratingName => throw _privateConstructorUsedError;
  @JsonKey(name: "image_urls")
  List<String> get imageUrls => throw _privateConstructorUsedError;
  @JsonKey(name: "about_the_hotel")
  AboutHotel get aboutTheHotel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelCopyWith<Hotel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelCopyWith<$Res> {
  factory $HotelCopyWith(Hotel value, $Res Function(Hotel) then) =
      _$HotelCopyWithImpl<$Res, Hotel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "adress") String adress,
      @JsonKey(name: "minimal_price") int minimalPrice,
      @JsonKey(name: "price_for_it") String priceForIt,
      @JsonKey(name: "rating") int rating,
      @JsonKey(name: "rating_name") String ratingName,
      @JsonKey(name: "image_urls") List<String> imageUrls,
      @JsonKey(name: "about_the_hotel") AboutHotel aboutTheHotel});

  $AboutHotelCopyWith<$Res> get aboutTheHotel;
}

/// @nodoc
class _$HotelCopyWithImpl<$Res, $Val extends Hotel>
    implements $HotelCopyWith<$Res> {
  _$HotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? adress = null,
    Object? minimalPrice = null,
    Object? priceForIt = null,
    Object? rating = null,
    Object? ratingName = null,
    Object? imageUrls = null,
    Object? aboutTheHotel = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      priceForIt: null == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aboutTheHotel: null == aboutTheHotel
          ? _value.aboutTheHotel
          : aboutTheHotel // ignore: cast_nullable_to_non_nullable
              as AboutHotel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AboutHotelCopyWith<$Res> get aboutTheHotel {
    return $AboutHotelCopyWith<$Res>(_value.aboutTheHotel, (value) {
      return _then(_value.copyWith(aboutTheHotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HotelCopyWith<$Res> implements $HotelCopyWith<$Res> {
  factory _$$_HotelCopyWith(_$_Hotel value, $Res Function(_$_Hotel) then) =
      __$$_HotelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "adress") String adress,
      @JsonKey(name: "minimal_price") int minimalPrice,
      @JsonKey(name: "price_for_it") String priceForIt,
      @JsonKey(name: "rating") int rating,
      @JsonKey(name: "rating_name") String ratingName,
      @JsonKey(name: "image_urls") List<String> imageUrls,
      @JsonKey(name: "about_the_hotel") AboutHotel aboutTheHotel});

  @override
  $AboutHotelCopyWith<$Res> get aboutTheHotel;
}

/// @nodoc
class __$$_HotelCopyWithImpl<$Res> extends _$HotelCopyWithImpl<$Res, _$_Hotel>
    implements _$$_HotelCopyWith<$Res> {
  __$$_HotelCopyWithImpl(_$_Hotel _value, $Res Function(_$_Hotel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? adress = null,
    Object? minimalPrice = null,
    Object? priceForIt = null,
    Object? rating = null,
    Object? ratingName = null,
    Object? imageUrls = null,
    Object? aboutTheHotel = null,
  }) {
    return _then(_$_Hotel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      priceForIt: null == priceForIt
          ? _value.priceForIt
          : priceForIt // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      aboutTheHotel: null == aboutTheHotel
          ? _value.aboutTheHotel
          : aboutTheHotel // ignore: cast_nullable_to_non_nullable
              as AboutHotel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hotel implements _Hotel {
  const _$_Hotel(
      {@JsonKey(name: "id") this.id = 0,
      @JsonKey(name: "name") this.name = '',
      @JsonKey(name: "adress") this.adress = '',
      @JsonKey(name: "minimal_price") this.minimalPrice = 0,
      @JsonKey(name: "price_for_it") this.priceForIt = '',
      @JsonKey(name: "rating") this.rating = 0,
      @JsonKey(name: "rating_name") this.ratingName = '',
      @JsonKey(name: "image_urls") final List<String> imageUrls = const [],
      @JsonKey(name: "about_the_hotel")
      this.aboutTheHotel = Hotel.defAboutHotel})
      : _imageUrls = imageUrls;

  factory _$_Hotel.fromJson(Map<String, dynamic> json) =>
      _$$_HotelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "adress")
  final String adress;
  @override
  @JsonKey(name: "minimal_price")
  final int minimalPrice;
  @override
  @JsonKey(name: "price_for_it")
  final String priceForIt;
  @override
  @JsonKey(name: "rating")
  final int rating;
  @override
  @JsonKey(name: "rating_name")
  final String ratingName;
  final List<String> _imageUrls;
  @override
  @JsonKey(name: "image_urls")
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  @JsonKey(name: "about_the_hotel")
  final AboutHotel aboutTheHotel;

  @override
  String toString() {
    return 'Hotel(id: $id, name: $name, adress: $adress, minimalPrice: $minimalPrice, priceForIt: $priceForIt, rating: $rating, ratingName: $ratingName, imageUrls: $imageUrls, aboutTheHotel: $aboutTheHotel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hotel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.minimalPrice, minimalPrice) ||
                other.minimalPrice == minimalPrice) &&
            (identical(other.priceForIt, priceForIt) ||
                other.priceForIt == priceForIt) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.aboutTheHotel, aboutTheHotel) ||
                other.aboutTheHotel == aboutTheHotel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      adress,
      minimalPrice,
      priceForIt,
      rating,
      ratingName,
      const DeepCollectionEquality().hash(_imageUrls),
      aboutTheHotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelCopyWith<_$_Hotel> get copyWith =>
      __$$_HotelCopyWithImpl<_$_Hotel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelToJson(
      this,
    );
  }
}

abstract class _Hotel implements Hotel {
  const factory _Hotel(
          {@JsonKey(name: "id") final int id,
          @JsonKey(name: "name") final String name,
          @JsonKey(name: "adress") final String adress,
          @JsonKey(name: "minimal_price") final int minimalPrice,
          @JsonKey(name: "price_for_it") final String priceForIt,
          @JsonKey(name: "rating") final int rating,
          @JsonKey(name: "rating_name") final String ratingName,
          @JsonKey(name: "image_urls") final List<String> imageUrls,
          @JsonKey(name: "about_the_hotel") final AboutHotel aboutTheHotel}) =
      _$_Hotel;

  factory _Hotel.fromJson(Map<String, dynamic> json) = _$_Hotel.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "adress")
  String get adress;
  @override
  @JsonKey(name: "minimal_price")
  int get minimalPrice;
  @override
  @JsonKey(name: "price_for_it")
  String get priceForIt;
  @override
  @JsonKey(name: "rating")
  int get rating;
  @override
  @JsonKey(name: "rating_name")
  String get ratingName;
  @override
  @JsonKey(name: "image_urls")
  List<String> get imageUrls;
  @override
  @JsonKey(name: "about_the_hotel")
  AboutHotel get aboutTheHotel;
  @override
  @JsonKey(ignore: true)
  _$$_HotelCopyWith<_$_Hotel> get copyWith =>
      throw _privateConstructorUsedError;
}
