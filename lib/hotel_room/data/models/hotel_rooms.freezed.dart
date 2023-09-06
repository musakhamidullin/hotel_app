// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_rooms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HoteRoom _$HoteRoomFromJson(Map<String, dynamic> json) {
  return _HoteRoom.fromJson(json);
}

/// @nodoc
mixin _$HoteRoom {
  @JsonKey(name: "rooms")
  List<Room> get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HoteRoomCopyWith<HoteRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HoteRoomCopyWith<$Res> {
  factory $HoteRoomCopyWith(HoteRoom value, $Res Function(HoteRoom) then) =
      _$HoteRoomCopyWithImpl<$Res, HoteRoom>;
  @useResult
  $Res call({@JsonKey(name: "rooms") List<Room> rooms});
}

/// @nodoc
class _$HoteRoomCopyWithImpl<$Res, $Val extends HoteRoom>
    implements $HoteRoomCopyWith<$Res> {
  _$HoteRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_value.copyWith(
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HoteRoomCopyWith<$Res> implements $HoteRoomCopyWith<$Res> {
  factory _$$_HoteRoomCopyWith(
          _$_HoteRoom value, $Res Function(_$_HoteRoom) then) =
      __$$_HoteRoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "rooms") List<Room> rooms});
}

/// @nodoc
class __$$_HoteRoomCopyWithImpl<$Res>
    extends _$HoteRoomCopyWithImpl<$Res, _$_HoteRoom>
    implements _$$_HoteRoomCopyWith<$Res> {
  __$$_HoteRoomCopyWithImpl(
      _$_HoteRoom _value, $Res Function(_$_HoteRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$_HoteRoom(
      rooms: null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HoteRoom implements _HoteRoom {
  const _$_HoteRoom({@JsonKey(name: "rooms") final List<Room> rooms = const []})
      : _rooms = rooms;

  factory _$_HoteRoom.fromJson(Map<String, dynamic> json) =>
      _$$_HoteRoomFromJson(json);

  final List<Room> _rooms;
  @override
  @JsonKey(name: "rooms")
  List<Room> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'HoteRoom(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HoteRoom &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HoteRoomCopyWith<_$_HoteRoom> get copyWith =>
      __$$_HoteRoomCopyWithImpl<_$_HoteRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HoteRoomToJson(
      this,
    );
  }
}

abstract class _HoteRoom implements HoteRoom {
  const factory _HoteRoom({@JsonKey(name: "rooms") final List<Room> rooms}) =
      _$_HoteRoom;

  factory _HoteRoom.fromJson(Map<String, dynamic> json) = _$_HoteRoom.fromJson;

  @override
  @JsonKey(name: "rooms")
  List<Room> get rooms;
  @override
  @JsonKey(ignore: true)
  _$$_HoteRoomCopyWith<_$_HoteRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
