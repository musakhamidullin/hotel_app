// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingState {
  Status get status => throw _privateConstructorUsedError;
  Booking get booking => throw _privateConstructorUsedError;
  Map<int, String> get mapTourists => throw _privateConstructorUsedError;
  List<Tourist> get tourists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingStateCopyWith<BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
  @useResult
  $Res call(
      {Status status,
      Booking booking,
      Map<int, String> mapTourists,
      List<Tourist> tourists});

  $BookingCopyWith<$Res> get booking;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? booking = null,
    Object? mapTourists = null,
    Object? tourists = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking,
      mapTourists: null == mapTourists
          ? _value.mapTourists
          : mapTourists // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
      tourists: null == tourists
          ? _value.tourists
          : tourists // ignore: cast_nullable_to_non_nullable
              as List<Tourist>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingCopyWith<$Res> get booking {
    return $BookingCopyWith<$Res>(_value.booking, (value) {
      return _then(_value.copyWith(booking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookingStateCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$_BookingStateCopyWith(
          _$_BookingState value, $Res Function(_$_BookingState) then) =
      __$$_BookingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Booking booking,
      Map<int, String> mapTourists,
      List<Tourist> tourists});

  @override
  $BookingCopyWith<$Res> get booking;
}

/// @nodoc
class __$$_BookingStateCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$_BookingState>
    implements _$$_BookingStateCopyWith<$Res> {
  __$$_BookingStateCopyWithImpl(
      _$_BookingState _value, $Res Function(_$_BookingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? booking = null,
    Object? mapTourists = null,
    Object? tourists = null,
  }) {
    return _then(_$_BookingState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking,
      mapTourists: null == mapTourists
          ? _value._mapTourists
          : mapTourists // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
      tourists: null == tourists
          ? _value._tourists
          : tourists // ignore: cast_nullable_to_non_nullable
              as List<Tourist>,
    ));
  }
}

/// @nodoc

class _$_BookingState implements _BookingState {
  const _$_BookingState(
      {this.status = Status.unKnown,
      this.booking = BookingState.defBooking,
      final Map<int, String> mapTourists = BookingState._mapTourists,
      final List<Tourist> tourists = const []})
      : _mapTourists = mapTourists,
        _tourists = tourists;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Booking booking;
  final Map<int, String> _mapTourists;
  @override
  @JsonKey()
  Map<int, String> get mapTourists {
    if (_mapTourists is EqualUnmodifiableMapView) return _mapTourists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mapTourists);
  }

  final List<Tourist> _tourists;
  @override
  @JsonKey()
  List<Tourist> get tourists {
    if (_tourists is EqualUnmodifiableListView) return _tourists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tourists);
  }

  @override
  String toString() {
    return 'BookingState(status: $status, booking: $booking, mapTourists: $mapTourists, tourists: $tourists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.booking, booking) || other.booking == booking) &&
            const DeepCollectionEquality()
                .equals(other._mapTourists, _mapTourists) &&
            const DeepCollectionEquality().equals(other._tourists, _tourists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      booking,
      const DeepCollectionEquality().hash(_mapTourists),
      const DeepCollectionEquality().hash(_tourists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingStateCopyWith<_$_BookingState> get copyWith =>
      __$$_BookingStateCopyWithImpl<_$_BookingState>(this, _$identity);
}

abstract class _BookingState implements BookingState {
  const factory _BookingState(
      {final Status status,
      final Booking booking,
      final Map<int, String> mapTourists,
      final List<Tourist> tourists}) = _$_BookingState;

  @override
  Status get status;
  @override
  Booking get booking;
  @override
  Map<int, String> get mapTourists;
  @override
  List<Tourist> get tourists;
  @override
  @JsonKey(ignore: true)
  _$$_BookingStateCopyWith<_$_BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
