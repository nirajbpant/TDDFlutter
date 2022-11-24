// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  @JsonKey(name: "Success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "ErrorMessage")
  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: "ErrorCode")
  int get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: "Data")
  LoginResponseData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Success") bool success,
      @JsonKey(name: "ErrorMessage") String errorMessage,
      @JsonKey(name: "ErrorCode") int errorCode,
      @JsonKey(name: "Data") LoginResponseData? data});

  $LoginResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  final LoginResponse _value;
  // ignore: unused_field
  final $Res Function(LoginResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? errorMessage = freezed,
    Object? errorCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponseData?,
    ));
  }

  @override
  $LoginResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoginResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_LoginResponseCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$_LoginResponseCopyWith(
          _$_LoginResponse value, $Res Function(_$_LoginResponse) then) =
      __$$_LoginResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Success") bool success,
      @JsonKey(name: "ErrorMessage") String errorMessage,
      @JsonKey(name: "ErrorCode") int errorCode,
      @JsonKey(name: "Data") LoginResponseData? data});

  @override
  $LoginResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_LoginResponseCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res>
    implements _$$_LoginResponseCopyWith<$Res> {
  __$$_LoginResponseCopyWithImpl(
      _$_LoginResponse _value, $Res Function(_$_LoginResponse) _then)
      : super(_value, (v) => _then(v as _$_LoginResponse));

  @override
  _$_LoginResponse get _value => super._value as _$_LoginResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? errorMessage = freezed,
    Object? errorCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_LoginResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResponseData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LoginResponse implements _LoginResponse {
  const _$_LoginResponse(
      {@JsonKey(name: "Success") required this.success,
      @JsonKey(name: "ErrorMessage") required this.errorMessage,
      @JsonKey(name: "ErrorCode") required this.errorCode,
      @JsonKey(name: "Data") this.data});

  factory _$_LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseFromJson(json);

  @override
  @JsonKey(name: "Success")
  final bool success;
  @override
  @JsonKey(name: "ErrorMessage")
  final String errorMessage;
  @override
  @JsonKey(name: "ErrorCode")
  final int errorCode;
  @override
  @JsonKey(name: "Data")
  final LoginResponseData? data;

  @override
  String toString() {
    return 'LoginResponse(success: $success, errorMessage: $errorMessage, errorCode: $errorCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(errorCode),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_LoginResponseCopyWith<_$_LoginResponse> get copyWith =>
      __$$_LoginResponseCopyWithImpl<_$_LoginResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseToJson(this);
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse(
      {@JsonKey(name: "Success") required final bool success,
      @JsonKey(name: "ErrorMessage") required final String errorMessage,
      @JsonKey(name: "ErrorCode") required final int errorCode,
      @JsonKey(name: "Data") final LoginResponseData? data}) = _$_LoginResponse;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginResponse.fromJson;

  @override
  @JsonKey(name: "Success")
  bool get success;
  @override
  @JsonKey(name: "ErrorMessage")
  String get errorMessage;
  @override
  @JsonKey(name: "ErrorCode")
  int get errorCode;
  @override
  @JsonKey(name: "Data")
  LoginResponseData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResponseCopyWith<_$_LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
