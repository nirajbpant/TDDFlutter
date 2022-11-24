// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceAuthResponse _$DeviceAuthResponseFromJson(Map<String, dynamic> json) {
  return _DeviceAuthResponse.fromJson(json);
}

/// @nodoc
mixin _$DeviceAuthResponse {
  @JsonKey(name: "Success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "ErrorCode")
  int get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: "ErrorMessage")
  String get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceAuthResponseCopyWith<DeviceAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceAuthResponseCopyWith<$Res> {
  factory $DeviceAuthResponseCopyWith(
          DeviceAuthResponse value, $Res Function(DeviceAuthResponse) then) =
      _$DeviceAuthResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Success") bool success,
      @JsonKey(name: "ErrorCode") int errorCode,
      @JsonKey(name: "ErrorMessage") String error});
}

/// @nodoc
class _$DeviceAuthResponseCopyWithImpl<$Res>
    implements $DeviceAuthResponseCopyWith<$Res> {
  _$DeviceAuthResponseCopyWithImpl(this._value, this._then);

  final DeviceAuthResponse _value;
  // ignore: unused_field
  final $Res Function(DeviceAuthResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? errorCode = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DeviceAuthResponseCopyWith<$Res>
    implements $DeviceAuthResponseCopyWith<$Res> {
  factory _$$_DeviceAuthResponseCopyWith(_$_DeviceAuthResponse value,
          $Res Function(_$_DeviceAuthResponse) then) =
      __$$_DeviceAuthResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Success") bool success,
      @JsonKey(name: "ErrorCode") int errorCode,
      @JsonKey(name: "ErrorMessage") String error});
}

/// @nodoc
class __$$_DeviceAuthResponseCopyWithImpl<$Res>
    extends _$DeviceAuthResponseCopyWithImpl<$Res>
    implements _$$_DeviceAuthResponseCopyWith<$Res> {
  __$$_DeviceAuthResponseCopyWithImpl(
      _$_DeviceAuthResponse _value, $Res Function(_$_DeviceAuthResponse) _then)
      : super(_value, (v) => _then(v as _$_DeviceAuthResponse));

  @override
  _$_DeviceAuthResponse get _value => super._value as _$_DeviceAuthResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? errorCode = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_DeviceAuthResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceAuthResponse implements _DeviceAuthResponse {
  const _$_DeviceAuthResponse(
      {@JsonKey(name: "Success") required this.success,
      @JsonKey(name: "ErrorCode") required this.errorCode,
      @JsonKey(name: "ErrorMessage") required this.error});

  factory _$_DeviceAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceAuthResponseFromJson(json);

  @override
  @JsonKey(name: "Success")
  final bool success;
  @override
  @JsonKey(name: "ErrorCode")
  final int errorCode;
  @override
  @JsonKey(name: "ErrorMessage")
  final String error;

  @override
  String toString() {
    return 'DeviceAuthResponse(success: $success, errorCode: $errorCode, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceAuthResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(errorCode),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_DeviceAuthResponseCopyWith<_$_DeviceAuthResponse> get copyWith =>
      __$$_DeviceAuthResponseCopyWithImpl<_$_DeviceAuthResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceAuthResponseToJson(this);
  }
}

abstract class _DeviceAuthResponse implements DeviceAuthResponse {
  const factory _DeviceAuthResponse(
          {@JsonKey(name: "Success") required final bool success,
          @JsonKey(name: "ErrorCode") required final int errorCode,
          @JsonKey(name: "ErrorMessage") required final String error}) =
      _$_DeviceAuthResponse;

  factory _DeviceAuthResponse.fromJson(Map<String, dynamic> json) =
      _$_DeviceAuthResponse.fromJson;

  @override
  @JsonKey(name: "Success")
  bool get success;
  @override
  @JsonKey(name: "ErrorCode")
  int get errorCode;
  @override
  @JsonKey(name: "ErrorMessage")
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceAuthResponseCopyWith<_$_DeviceAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
