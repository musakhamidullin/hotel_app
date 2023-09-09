// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_rooms_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelRoomsState {
  Status get status => throw _privateConstructorUsedError;
  HoteRoom get hotelRooms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelRoomsStateCopyWith<HotelRoomsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelRoomsStateCopyWith<$Res> {
  factory $HotelRoomsStateCopyWith(
          HotelRoomsState value, $Res Function(HotelRoomsState) then) =
      _$HotelRoomsStateCopyWithImpl<$Res, HotelRoomsState>;
  @useResult
  $Res call({Status status, HoteRoom hotelRooms});

  $HoteRoomCopyWith<$Res> get hotelRooms;
}

/// @nodoc
class _$HotelRoomsStateCopyWithImpl<$Res, $Val extends HotelRoomsState>
    implements $HotelRoomsStateCopyWith<$Res> {
  _$HotelRoomsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? hotelRooms = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      hotelRooms: null == hotelRooms
          ? _value.hotelRooms
          : hotelRooms // ignore: cast_nullable_to_non_nullable
              as HoteRoom,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HoteRoomCopyWith<$Res> get hotelRooms {
    return $HoteRoomCopyWith<$Res>(_value.hotelRooms, (value) {
      return _then(_value.copyWith(hotelRooms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HotelRoomsStateCopyWith<$Res>
    implements $HotelRoomsStateCopyWith<$Res> {
  factory _$$_HotelRoomsStateCopyWith(
          _$_HotelRoomsState value, $Res Function(_$_HotelRoomsState) then) =
      __$$_HotelRoomsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, HoteRoom hotelRooms});

  @override
  $HoteRoomCopyWith<$Res> get hotelRooms;
}

/// @nodoc
class __$$_HotelRoomsStateCopyWithImpl<$Res>
    extends _$HotelRoomsStateCopyWithImpl<$Res, _$_HotelRoomsState>
    implements _$$_HotelRoomsStateCopyWith<$Res> {
  __$$_HotelRoomsStateCopyWithImpl(
      _$_HotelRoomsState _value, $Res Function(_$_HotelRoomsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? hotelRooms = null,
  }) {
    return _then(_$_HotelRoomsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      hotelRooms: null == hotelRooms
          ? _value.hotelRooms
          : hotelRooms // ignore: cast_nullable_to_non_nullable
              as HoteRoom,
    ));
  }
}

/// @nodoc

class _$_HotelRoomsState implements _HotelRoomsState {
  const _$_HotelRoomsState(
      {this.status = Status.unKnown,
      this.hotelRooms = HotelRoomsState.defHotel});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final HoteRoom hotelRooms;

  @override
  String toString() {
    return 'HotelRoomsState(status: $status, hotelRooms: $hotelRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelRoomsState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hotelRooms, hotelRooms) ||
                other.hotelRooms == hotelRooms));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, hotelRooms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HotelRoomsStateCopyWith<_$_HotelRoomsState> get copyWith =>
      __$$_HotelRoomsStateCopyWithImpl<_$_HotelRoomsState>(this, _$identity);
}

abstract class _HotelRoomsState implements HotelRoomsState {
  const factory _HotelRoomsState(
      {final Status status, final HoteRoom hotelRooms}) = _$_HotelRoomsState;

  @override
  Status get status;
  @override
  HoteRoom get hotelRooms;
  @override
  @JsonKey(ignore: true)
  _$$_HotelRoomsStateCopyWith<_$_HotelRoomsState> get copyWith =>
      throw _privateConstructorUsedError;
}
