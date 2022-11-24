// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lat_lng_coordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LatLngCoordiantes _$LatLngCoordiantesFromJson(Map<String, dynamic> json) {
  return _LatLngCoordiantes.fromJson(json);
}

/// @nodoc
mixin _$LatLngCoordiantes {
  @JsonKey(name: "Latitude")
  String get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "Longitude")
  String get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatLngCoordiantesCopyWith<LatLngCoordiantes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngCoordiantesCopyWith<$Res> {
  factory $LatLngCoordiantesCopyWith(
          LatLngCoordiantes value, $Res Function(LatLngCoordiantes) then) =
      _$LatLngCoordiantesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Latitude") String latitude,
      @JsonKey(name: "Longitude") String longitude});
}

/// @nodoc
class _$LatLngCoordiantesCopyWithImpl<$Res>
    implements $LatLngCoordiantesCopyWith<$Res> {
  _$LatLngCoordiantesCopyWithImpl(this._value, this._then);

  final LatLngCoordiantes _value;
  // ignore: unused_field
  final $Res Function(LatLngCoordiantes) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LatLngCoordiantesCopyWith<$Res>
    implements $LatLngCoordiantesCopyWith<$Res> {
  factory _$$_LatLngCoordiantesCopyWith(_$_LatLngCoordiantes value,
          $Res Function(_$_LatLngCoordiantes) then) =
      __$$_LatLngCoordiantesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Latitude") String latitude,
      @JsonKey(name: "Longitude") String longitude});
}

/// @nodoc
class __$$_LatLngCoordiantesCopyWithImpl<$Res>
    extends _$LatLngCoordiantesCopyWithImpl<$Res>
    implements _$$_LatLngCoordiantesCopyWith<$Res> {
  __$$_LatLngCoordiantesCopyWithImpl(
      _$_LatLngCoordiantes _value, $Res Function(_$_LatLngCoordiantes) _then)
      : super(_value, (v) => _then(v as _$_LatLngCoordiantes));

  @override
  _$_LatLngCoordiantes get _value => super._value as _$_LatLngCoordiantes;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_LatLngCoordiantes(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LatLngCoordiantes implements _LatLngCoordiantes {
  const _$_LatLngCoordiantes(
      {@JsonKey(name: "Latitude") required this.latitude,
      @JsonKey(name: "Longitude") required this.longitude});

  factory _$_LatLngCoordiantes.fromJson(Map<String, dynamic> json) =>
      _$$_LatLngCoordiantesFromJson(json);

  @override
  @JsonKey(name: "Latitude")
  final String latitude;
  @override
  @JsonKey(name: "Longitude")
  final String longitude;

  @override
  String toString() {
    return 'LatLngCoordiantes(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LatLngCoordiantes &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$$_LatLngCoordiantesCopyWith<_$_LatLngCoordiantes> get copyWith =>
      __$$_LatLngCoordiantesCopyWithImpl<_$_LatLngCoordiantes>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatLngCoordiantesToJson(this);
  }
}

abstract class _LatLngCoordiantes implements LatLngCoordiantes {
  const factory _LatLngCoordiantes(
          {@JsonKey(name: "Latitude") required final String latitude,
          @JsonKey(name: "Longitude") required final String longitude}) =
      _$_LatLngCoordiantes;

  factory _LatLngCoordiantes.fromJson(Map<String, dynamic> json) =
      _$_LatLngCoordiantes.fromJson;

  @override
  @JsonKey(name: "Latitude")
  String get latitude;
  @override
  @JsonKey(name: "Longitude")
  String get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_LatLngCoordiantesCopyWith<_$_LatLngCoordiantes> get copyWith =>
      throw _privateConstructorUsedError;
}
