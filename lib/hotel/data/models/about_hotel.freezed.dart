// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AboutHotel _$AboutHotelFromJson(Map<String, dynamic> json) {
  return _AboutHotel.fromJson(json);
}

/// @nodoc
mixin _$AboutHotel {
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "peculiarities")
  List<String> get peculiarities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutHotelCopyWith<AboutHotel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutHotelCopyWith<$Res> {
  factory $AboutHotelCopyWith(
          AboutHotel value, $Res Function(AboutHotel) then) =
      _$AboutHotelCopyWithImpl<$Res, AboutHotel>;
  @useResult
  $Res call(
      {@JsonKey(name: "description") String description,
      @JsonKey(name: "peculiarities") List<String> peculiarities});
}

/// @nodoc
class _$AboutHotelCopyWithImpl<$Res, $Val extends AboutHotel>
    implements $AboutHotelCopyWith<$Res> {
  _$AboutHotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? peculiarities = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AboutHotelCopyWith<$Res>
    implements $AboutHotelCopyWith<$Res> {
  factory _$$_AboutHotelCopyWith(
          _$_AboutHotel value, $Res Function(_$_AboutHotel) then) =
      __$$_AboutHotelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "description") String description,
      @JsonKey(name: "peculiarities") List<String> peculiarities});
}

/// @nodoc
class __$$_AboutHotelCopyWithImpl<$Res>
    extends _$AboutHotelCopyWithImpl<$Res, _$_AboutHotel>
    implements _$$_AboutHotelCopyWith<$Res> {
  __$$_AboutHotelCopyWithImpl(
      _$_AboutHotel _value, $Res Function(_$_AboutHotel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? peculiarities = null,
  }) {
    return _then(_$_AboutHotel(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      peculiarities: null == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AboutHotel implements _AboutHotel {
  const _$_AboutHotel(
      {@JsonKey(name: "description") this.description = '',
      @JsonKey(name: "peculiarities")
      final List<String> peculiarities = const []})
      : _peculiarities = peculiarities;

  factory _$_AboutHotel.fromJson(Map<String, dynamic> json) =>
      _$$_AboutHotelFromJson(json);

  @override
  @JsonKey(name: "description")
  final String description;
  final List<String> _peculiarities;
  @override
  @JsonKey(name: "peculiarities")
  List<String> get peculiarities {
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peculiarities);
  }

  @override
  String toString() {
    return 'AboutHotel(description: $description, peculiarities: $peculiarities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AboutHotel &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_peculiarities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AboutHotelCopyWith<_$_AboutHotel> get copyWith =>
      __$$_AboutHotelCopyWithImpl<_$_AboutHotel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AboutHotelToJson(
      this,
    );
  }
}

abstract class _AboutHotel implements AboutHotel {
  const factory _AboutHotel(
          {@JsonKey(name: "description") final String description,
          @JsonKey(name: "peculiarities") final List<String> peculiarities}) =
      _$_AboutHotel;

  factory _AboutHotel.fromJson(Map<String, dynamic> json) =
      _$_AboutHotel.fromJson;

  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "peculiarities")
  List<String> get peculiarities;
  @override
  @JsonKey(ignore: true)
  _$$_AboutHotelCopyWith<_$_AboutHotel> get copyWith =>
      throw _privateConstructorUsedError;
}
