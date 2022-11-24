// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trailer_map_screen_arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrailerCoordinates {
  String get trailerId => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  List<LatLngCoordiantes>? get latLngResponseData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrailerCoordinatesCopyWith<TrailerCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailerCoordinatesCopyWith<$Res> {
  factory $TrailerCoordinatesCopyWith(
          TrailerCoordinates value, $Res Function(TrailerCoordinates) then) =
      _$TrailerCoordinatesCopyWithImpl<$Res>;
  $Res call(
      {String trailerId,
      double longitude,
      double latitude,
      List<LatLngCoordiantes>? latLngResponseData});
}

/// @nodoc
class _$TrailerCoordinatesCopyWithImpl<$Res>
    implements $TrailerCoordinatesCopyWith<$Res> {
  _$TrailerCoordinatesCopyWithImpl(this._value, this._then);

  final TrailerCoordinates _value;
  // ignore: unused_field
  final $Res Function(TrailerCoordinates) _then;

  @override
  $Res call({
    Object? trailerId = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? latLngResponseData = freezed,
  }) {
    return _then(_value.copyWith(
      trailerId: trailerId == freezed
          ? _value.trailerId
          : trailerId // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      latLngResponseData: latLngResponseData == freezed
          ? _value.latLngResponseData
          : latLngResponseData // ignore: cast_nullable_to_non_nullable
              as List<LatLngCoordiantes>?,
    ));
  }
}

/// @nodoc
abstract class _$$_TrailerCoordinatesCopyWith<$Res>
    implements $TrailerCoordinatesCopyWith<$Res> {
  factory _$$_TrailerCoordinatesCopyWith(_$_TrailerCoordinates value,
          $Res Function(_$_TrailerCoordinates) then) =
      __$$_TrailerCoordinatesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String trailerId,
      double longitude,
      double latitude,
      List<LatLngCoordiantes>? latLngResponseData});
}

/// @nodoc
class __$$_TrailerCoordinatesCopyWithImpl<$Res>
    extends _$TrailerCoordinatesCopyWithImpl<$Res>
    implements _$$_TrailerCoordinatesCopyWith<$Res> {
  __$$_TrailerCoordinatesCopyWithImpl(
      _$_TrailerCoordinates _value, $Res Function(_$_TrailerCoordinates) _then)
      : super(_value, (v) => _then(v as _$_TrailerCoordinates));

  @override
  _$_TrailerCoordinates get _value => super._value as _$_TrailerCoordinates;

  @override
  $Res call({
    Object? trailerId = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? latLngResponseData = freezed,
  }) {
    return _then(_$_TrailerCoordinates(
      trailerId: trailerId == freezed
          ? _value.trailerId
          : trailerId // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      latLngResponseData: latLngResponseData == freezed
          ? _value._latLngResponseData
          : latLngResponseData // ignore: cast_nullable_to_non_nullable
              as List<LatLngCoordiantes>?,
    ));
  }
}

/// @nodoc

class _$_TrailerCoordinates implements _TrailerCoordinates {
  const _$_TrailerCoordinates(
      {required this.trailerId,
      required this.longitude,
      required this.latitude,
      required final List<LatLngCoordiantes>? latLngResponseData})
      : _latLngResponseData = latLngResponseData;

  @override
  final String trailerId;
  @override
  final double longitude;
  @override
  final double latitude;
  final List<LatLngCoordiantes>? _latLngResponseData;
  @override
  List<LatLngCoordiantes>? get latLngResponseData {
    final value = _latLngResponseData;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrailerCoordinates(trailerId: $trailerId, longitude: $longitude, latitude: $latitude, latLngResponseData: $latLngResponseData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrailerCoordinates &&
            const DeepCollectionEquality().equals(other.trailerId, trailerId) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality()
                .equals(other._latLngResponseData, _latLngResponseData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(trailerId),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(_latLngResponseData));

  @JsonKey(ignore: true)
  @override
  _$$_TrailerCoordinatesCopyWith<_$_TrailerCoordinates> get copyWith =>
      __$$_TrailerCoordinatesCopyWithImpl<_$_TrailerCoordinates>(
          this, _$identity);
}

abstract class _TrailerCoordinates implements TrailerCoordinates {
  const factory _TrailerCoordinates(
          {required final String trailerId,
          required final double longitude,
          required final double latitude,
          required final List<LatLngCoordiantes>? latLngResponseData}) =
      _$_TrailerCoordinates;

  @override
  String get trailerId;
  @override
  double get longitude;
  @override
  double get latitude;
  @override
  List<LatLngCoordiantes>? get latLngResponseData;
  @override
  @JsonKey(ignore: true)
  _$$_TrailerCoordinatesCopyWith<_$_TrailerCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}
