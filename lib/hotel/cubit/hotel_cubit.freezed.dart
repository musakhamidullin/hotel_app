// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelState {
  Status get status => throw _privateConstructorUsedError;
  Hotel get hotel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelStateCopyWith<HotelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelStateCopyWith<$Res> {
  factory $HotelStateCopyWith(
          HotelState value, $Res Function(HotelState) then) =
      _$HotelStateCopyWithImpl<$Res, HotelState>;
  @useResult
  $Res call({Status status, Hotel hotel});

  $HotelCopyWith<$Res> get hotel;
}

/// @nodoc
class _$HotelStateCopyWithImpl<$Res, $Val extends HotelState>
    implements $HotelStateCopyWith<$Res> {
  _$HotelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? hotel = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      hotel: null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as Hotel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelCopyWith<$Res> get hotel {
    return $HotelCopyWith<$Res>(_value.hotel, (value) {
      return _then(_value.copyWith(hotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HotelStateCopyWith<$Res>
    implements $HotelStateCopyWith<$Res> {
  factory _$$_HotelStateCopyWith(
          _$_HotelState value, $Res Function(_$_HotelState) then) =
      __$$_HotelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, Hotel hotel});

  @override
  $HotelCopyWith<$Res> get hotel;
}

/// @nodoc
class __$$_HotelStateCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$_HotelState>
    implements _$$_HotelStateCopyWith<$Res> {
  __$$_HotelStateCopyWithImpl(
      _$_HotelState _value, $Res Function(_$_HotelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? hotel = null,
  }) {
    return _then(_$_HotelState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      hotel: null == hotel
          ? _value.hotel
          : hotel // ignore: cast_nullable_to_non_nullable
              as Hotel,
    ));
  }
}

/// @nodoc

class _$_HotelState implements _HotelState {
  const _$_HotelState(
      {this.status = Status.unKnown, this.hotel = HotelState.defaultHotel});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Hotel hotel;

  @override
  String toString() {
    return 'HotelState(status: $status, hotel: $hotel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hotel, hotel) || other.hotel == hotel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, hotel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelStateCopyWith<_$_HotelState> get copyWith =>
      __$$_HotelStateCopyWithImpl<_$_HotelState>(this, _$identity);
}

abstract class _HotelState implements HotelState {
  const factory _HotelState({final Status status, final Hotel hotel}) =
      _$_HotelState;

  @override
  Status get status;
  @override
  Hotel get hotel;
  @override
  @JsonKey(ignore: true)
  _$$_HotelStateCopyWith<_$_HotelState> get copyWith =>
      throw _privateConstructorUsedError;
}
