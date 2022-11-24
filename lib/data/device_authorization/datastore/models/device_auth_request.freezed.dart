// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_auth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceAuthRequest _$DeviceAuthRequestFromJson(Map<String, dynamic> json) {
  return _DeviceAuthRequest.fromJson(json);
}

/// @nodoc
mixin _$DeviceAuthRequest {
  @JsonKey(name: "ActivationKey")
  String get activationKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceAuthRequestCopyWith<DeviceAuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceAuthRequestCopyWith<$Res> {
  factory $DeviceAuthRequestCopyWith(
          DeviceAuthRequest value, $Res Function(DeviceAuthRequest) then) =
      _$DeviceAuthRequestCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "ActivationKey") String activationKey});
}

/// @nodoc
class _$DeviceAuthRequestCopyWithImpl<$Res>
    implements $DeviceAuthRequestCopyWith<$Res> {
  _$DeviceAuthRequestCopyWithImpl(this._value, this._then);

  final DeviceAuthRequest _value;
  // ignore: unused_field
  final $Res Function(DeviceAuthRequest) _then;

  @override
  $Res call({
    Object? activationKey = freezed,
  }) {
    return _then(_value.copyWith(
      activationKey: activationKey == freezed
          ? _value.activationKey
          : activationKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DeviceAuthRequestCopyWith<$Res>
    implements $DeviceAuthRequestCopyWith<$Res> {
  factory _$$_DeviceAuthRequestCopyWith(_$_DeviceAuthRequest value,
          $Res Function(_$_DeviceAuthRequest) then) =
      __$$_DeviceAuthRequestCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "ActivationKey") String activationKey});
}

/// @nodoc
class __$$_DeviceAuthRequestCopyWithImpl<$Res>
    extends _$DeviceAuthRequestCopyWithImpl<$Res>
    implements _$$_DeviceAuthRequestCopyWith<$Res> {
  __$$_DeviceAuthRequestCopyWithImpl(
      _$_DeviceAuthRequest _value, $Res Function(_$_DeviceAuthRequest) _then)
      : super(_value, (v) => _then(v as _$_DeviceAuthRequest));

  @override
  _$_DeviceAuthRequest get _value => super._value as _$_DeviceAuthRequest;

  @override
  $Res call({
    Object? activationKey = freezed,
  }) {
    return _then(_$_DeviceAuthRequest(
      activationKey: activationKey == freezed
          ? _value.activationKey
          : activationKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceAuthRequest implements _DeviceAuthRequest {
  const _$_DeviceAuthRequest(
      {@JsonKey(name: "ActivationKey") required this.activationKey});

  factory _$_DeviceAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceAuthRequestFromJson(json);

  @override
  @JsonKey(name: "ActivationKey")
  final String activationKey;

  @override
  String toString() {
    return 'DeviceAuthRequest(activationKey: $activationKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceAuthRequest &&
            const DeepCollectionEquality()
                .equals(other.activationKey, activationKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(activationKey));

  @JsonKey(ignore: true)
  @override
  _$$_DeviceAuthRequestCopyWith<_$_DeviceAuthRequest> get copyWith =>
      __$$_DeviceAuthRequestCopyWithImpl<_$_DeviceAuthRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceAuthRequestToJson(this);
  }
}

abstract class _DeviceAuthRequest implements DeviceAuthRequest {
  const factory _DeviceAuthRequest(
      {@JsonKey(name: "ActivationKey")
          required final String activationKey}) = _$_DeviceAuthRequest;

  factory _DeviceAuthRequest.fromJson(Map<String, dynamic> json) =
      _$_DeviceAuthRequest.fromJson;

  @override
  @JsonKey(name: "ActivationKey")
  String get activationKey;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceAuthRequestCopyWith<_$_DeviceAuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
