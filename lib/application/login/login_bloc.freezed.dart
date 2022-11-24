// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  LoginRequest get request => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest request) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoginRequest request)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest request)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
  $Res call({LoginRequest request});

  $LoginRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_value.copyWith(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as LoginRequest,
    ));
  }

  @override
  $LoginRequestCopyWith<$Res> get request {
    return $LoginRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @override
  $Res call({LoginRequest request});

  @override
  $LoginRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, (v) => _then(v as _$_Login));

  @override
  _$_Login get _value => super._value as _$_Login;

  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_$_Login(
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as LoginRequest,
    ));
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login({required this.request});

  @override
  final LoginRequest request;

  @override
  String toString() {
    return 'LoginEvent.login(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  @JsonKey(ignore: true)
  @override
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequest request) login,
  }) {
    return login(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoginRequest request)? login,
  }) {
    return login?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequest request)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  const factory _Login({required final LoginRequest request}) = _$_Login;

  @override
  LoginRequest get request;
  @override
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String messsage) error,
    required TResult Function(String authMessage) successAndDeviceAuthorized,
    required TResult Function() successAndDeviceUnAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String messsage)? error,
    TResult Function(String authMessage)? successAndDeviceAuthorized,
    TResult Function()? successAndDeviceUnAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String messsage)? error,
    TResult Function(String authMessage)? successAndDeviceAuthorized,
    TResult Function()? successAndDeviceUnAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessAndDeviceAuthorized value)
        successAndDeviceAuthorized,
    required TResult Function(_SuccessAndDeviceUnAuthorized value)
        successAndDeviceUnAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAndDeviceAuthorized value)?
        successAndDeviceAuthorized,
    TResult Function(_SuccessAndDeviceUnAuthorized value)?
        successAndDeviceUnAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAndDeviceAuthorized value)?
        successAndDeviceAuthorized,
    TResult Function(_SuccessAndDeviceUnAuthorized value)?
        successAndDeviceUnAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String messsage) error,
    required TResult Function(String authMessage) successAndDeviceAuthorized,
    required TResult Function() successAndDeviceUnAuthorized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String messsage)? error,
    TResult Function(String authMessage)? successAndDeviceAuthorized,
    TResult Function()? successAndDeviceUnAuthorized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String messsage)? error,
    TResult Function(String authMessage)? successAndDeviceAuthorized,
    TResult Function()? successAndDeviceUnAuthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessAndDeviceAuthorized value)
        successAndDeviceAuthorized,
    required TResult Function(_SuccessAndDeviceUnAuthorized value)
        successAndDeviceUnAuthorized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAndDeviceAuthorized value)?
        successAndDeviceAuthorized,
    TResult Function(_SuccessAndDeviceUnAuthorized value)?
        successAndDeviceUnAuthorized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAndDeviceAuthorized value)?
        successAndDeviceAuthorized,
    TResult Function(_SuccessAndDeviceUnAuthorized value)?
        successAndDeviceUnAuthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String messsage) error,
    required TResult Function(String authMessage) successAndDeviceAuthorized,
    required TResult Function() successAndDeviceUnAuthorized,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String messsage)? error,
    TResult Function(String authMessage)? successAndDeviceAuthorized,
    TResult Function()? successAndDeviceUnAuthorized,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String messsage)? error,
    TResult Function(String authMessage)? successAndDeviceAuthorized,
    TResult Function()? successAndDeviceUnAuthorized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessAndDeviceAuthorized value)
        successAndDeviceAuthorized,
    required TResult Function(_SuccessAndDeviceUnAuthorized value)
        successAndDeviceUnAuthorized,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAndDeviceAuthorized value)?
        successAndDeviceAuthorized,
    TResult Function(_SuccessAndDeviceUnAuthorized value)?
        successAndDeviceUnAuthorized,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAndDeviceAuthorized value)?
        successAndDeviceAuthorized,
    TResult Function(_SuccessAndDeviceUnAuthorized value)?
        successAndDeviceUnAuthorized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({String messsage});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? messsage = freezed,
  }) {
    return _then(_$_Error(
      messsage: messsage == freezed
          ? _value.messsage
          : messsage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.messsage});

  @override
  final String messsage;

  @override
  String toString() {
    return 'LoginState.error(messsage: $messsage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.messsage, messsage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(messsage));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String messsage) error,
    required TResult Function(String authMessage) successAndDeviceAuthorized,
    required TResult Function() successAndDeviceUnAuthorized,
  }) {
    return error(messsage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String messsage)? error,
    TResult Function(String authMessage)? successAndDeviceAuthorized,
    TResult Function()? successAndDeviceUnAuthorized,
  }) {
    return error?.call(messsage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String messsage)? error,
    TResult Function(String authMessage)? successAndDeviceAuthorized,
    TResult Function()? successAndDeviceUnAuthorized,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(messsage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessAndDeviceAuthorized value)
        successAndDeviceAuthorized,
    required TResult Function(_SuccessAndDeviceUnAuthorized value)
        successAndDeviceUnAuthorized,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAndDeviceAuthorized value)?
        successAndDeviceAuthorized,
    TResult Function(_SuccessAndDeviceUnAuthorized value)?
        successAndDeviceUnAuthorized,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAndDeviceAuthorized value)?
        successAndDeviceAuthorized,
    TResult Function(_SuccessAndDeviceUnAuthorized value)?
        successAndDeviceUnAuthorized,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginState {
  const factory _Error({required final String messsage}) = _$_Error;

  String get messsage;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessAndDeviceAuthorizedCopyWith<$Res> {
  factory _$$_SuccessAndDeviceAuthorizedCopyWith(
          _$_SuccessAndDeviceAuthorized value,
          $Res Function(_$_SuccessAndDeviceAuthorized) then) =
      __$$_SuccessAndDeviceAuthorizedCopyWithImpl<$Res>;
  $Res call({String authMessage});
}

/// @nodoc
class __$$_SuccessAndDeviceAuthorizedCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_SuccessAndDeviceAuthorizedCopyWith<$Res> {
  __$$_SuccessAndDeviceAuthorizedCopyWithImpl(
      _$_SuccessAndDeviceAuthorized _value,
      $Res Function(_$_SuccessAndDeviceAuthorized) _then)
      : super(_value, (v) => _then(v as _$_SuccessAndDeviceAuthorized));

  @override
  _$_SuccessAndDeviceAuthorized get _value =>
      super._value as _$_SuccessAndDeviceAuthorized;

  @override
  $Res call({
    Object? authMessage = freezed,
  }) {
    return _then(_$_SuccessAndDeviceAuthorized(
      authMessage: authMessage == freezed
          ? _value.authMessage
          : authMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SuccessAndDeviceAuthorized implements _SuccessAndDeviceAuthorized {
  const _$_SuccessAndDeviceAuthorized({required this.authMessage});

  @override
  final String authMessage;

  @override
  String toString() {
    return 'LoginState.successAndDeviceAuthorized(authMessage: $authMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessAndDeviceAuthorized &&
            const DeepCollectionEquality()
                .equals(other.authMessage, authMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(authMessage));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessAndDeviceAuthorizedCopyWith<_$_SuccessAndDeviceAuthorized>
      get copyWith => __$$_SuccessAndDeviceAuthorizedCopyWithImpl<
          _$_SuccessAndDeviceAuthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String messsage) error,
    required TResult Function(String authMessage) successAndDeviceAuthorized,
    required TResult Function() successAndDeviceUnAuthorized,
  }) {
    return successAndDeviceAuthorized(authMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String messsage)? error,
    TResult Function(String authMessage)? successAndDeviceAuthorized,
    TResult Function()? successAndDeviceUnAuthorized,
  }) {
    return successAndDeviceAuthorized?.call(authMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String messsage)? error,
    TResult Function(String authMessage)? successAndDeviceAuthorized,
    TResult Function()? successAndDeviceUnAuthorized,
    required TResult orElse(),
  }) {
    if (successAndDeviceAuthorized != null) {
      return successAndDeviceAuthorized(authMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessAndDeviceAuthorized value)
        successAndDeviceAuthorized,
    required TResult Function(_SuccessAndDeviceUnAuthorized value)
        successAndDeviceUnAuthorized,
  }) {
    return successAndDeviceAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAndDeviceAuthorized value)?
        successAndDeviceAuthorized,
    TResult Function(_SuccessAndDeviceUnAuthorized value)?
        successAndDeviceUnAuthorized,
  }) {
    return successAndDeviceAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAndDeviceAuthorized value)?
        successAndDeviceAuthorized,
    TResult Function(_SuccessAndDeviceUnAuthorized value)?
        successAndDeviceUnAuthorized,
    required TResult orElse(),
  }) {
    if (successAndDeviceAuthorized != null) {
      return successAndDeviceAuthorized(this);
    }
    return orElse();
  }
}

abstract class _SuccessAndDeviceAuthorized implements LoginState {
  const factory _SuccessAndDeviceAuthorized(
      {required final String authMessage}) = _$_SuccessAndDeviceAuthorized;

  String get authMessage;
  @JsonKey(ignore: true)
  _$$_SuccessAndDeviceAuthorizedCopyWith<_$_SuccessAndDeviceAuthorized>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessAndDeviceUnAuthorizedCopyWith<$Res> {
  factory _$$_SuccessAndDeviceUnAuthorizedCopyWith(
          _$_SuccessAndDeviceUnAuthorized value,
          $Res Function(_$_SuccessAndDeviceUnAuthorized) then) =
      __$$_SuccessAndDeviceUnAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessAndDeviceUnAuthorizedCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_SuccessAndDeviceUnAuthorizedCopyWith<$Res> {
  __$$_SuccessAndDeviceUnAuthorizedCopyWithImpl(
      _$_SuccessAndDeviceUnAuthorized _value,
      $Res Function(_$_SuccessAndDeviceUnAuthorized) _then)
      : super(_value, (v) => _then(v as _$_SuccessAndDeviceUnAuthorized));

  @override
  _$_SuccessAndDeviceUnAuthorized get _value =>
      super._value as _$_SuccessAndDeviceUnAuthorized;
}

/// @nodoc

class _$_SuccessAndDeviceUnAuthorized implements _SuccessAndDeviceUnAuthorized {
  const _$_SuccessAndDeviceUnAuthorized();

  @override
  String toString() {
    return 'LoginState.successAndDeviceUnAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessAndDeviceUnAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String messsage) error,
    required TResult Function(String authMessage) successAndDeviceAuthorized,
    required TResult Function() successAndDeviceUnAuthorized,
  }) {
    return successAndDeviceUnAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String messsage)? error,
    TResult Function(String authMessage)? successAndDeviceAuthorized,
    TResult Function()? successAndDeviceUnAuthorized,
  }) {
    return successAndDeviceUnAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String messsage)? error,
    TResult Function(String authMessage)? successAndDeviceAuthorized,
    TResult Function()? successAndDeviceUnAuthorized,
    required TResult orElse(),
  }) {
    if (successAndDeviceUnAuthorized != null) {
      return successAndDeviceUnAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessAndDeviceAuthorized value)
        successAndDeviceAuthorized,
    required TResult Function(_SuccessAndDeviceUnAuthorized value)
        successAndDeviceUnAuthorized,
  }) {
    return successAndDeviceUnAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAndDeviceAuthorized value)?
        successAndDeviceAuthorized,
    TResult Function(_SuccessAndDeviceUnAuthorized value)?
        successAndDeviceUnAuthorized,
  }) {
    return successAndDeviceUnAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessAndDeviceAuthorized value)?
        successAndDeviceAuthorized,
    TResult Function(_SuccessAndDeviceUnAuthorized value)?
        successAndDeviceUnAuthorized,
    required TResult orElse(),
  }) {
    if (successAndDeviceUnAuthorized != null) {
      return successAndDeviceUnAuthorized(this);
    }
    return orElse();
  }
}

abstract class _SuccessAndDeviceUnAuthorized implements LoginState {
  const factory _SuccessAndDeviceUnAuthorized() =
      _$_SuccessAndDeviceUnAuthorized;
}
