// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceAuthEvent {
  DeviceAuthRequest get authRequest => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceAuthRequest authRequest) authorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DeviceAuthRequest authRequest)? authorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceAuthRequest authRequest)? authorize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authorize value) authorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Authorize value)? authorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authorize value)? authorize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceAuthEventCopyWith<DeviceAuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceAuthEventCopyWith<$Res> {
  factory $DeviceAuthEventCopyWith(
          DeviceAuthEvent value, $Res Function(DeviceAuthEvent) then) =
      _$DeviceAuthEventCopyWithImpl<$Res>;
  $Res call({DeviceAuthRequest authRequest});

  $DeviceAuthRequestCopyWith<$Res> get authRequest;
}

/// @nodoc
class _$DeviceAuthEventCopyWithImpl<$Res>
    implements $DeviceAuthEventCopyWith<$Res> {
  _$DeviceAuthEventCopyWithImpl(this._value, this._then);

  final DeviceAuthEvent _value;
  // ignore: unused_field
  final $Res Function(DeviceAuthEvent) _then;

  @override
  $Res call({
    Object? authRequest = freezed,
  }) {
    return _then(_value.copyWith(
      authRequest: authRequest == freezed
          ? _value.authRequest
          : authRequest // ignore: cast_nullable_to_non_nullable
              as DeviceAuthRequest,
    ));
  }

  @override
  $DeviceAuthRequestCopyWith<$Res> get authRequest {
    return $DeviceAuthRequestCopyWith<$Res>(_value.authRequest, (value) {
      return _then(_value.copyWith(authRequest: value));
    });
  }
}

/// @nodoc
abstract class _$$_AuthorizeCopyWith<$Res>
    implements $DeviceAuthEventCopyWith<$Res> {
  factory _$$_AuthorizeCopyWith(
          _$_Authorize value, $Res Function(_$_Authorize) then) =
      __$$_AuthorizeCopyWithImpl<$Res>;
  @override
  $Res call({DeviceAuthRequest authRequest});

  @override
  $DeviceAuthRequestCopyWith<$Res> get authRequest;
}

/// @nodoc
class __$$_AuthorizeCopyWithImpl<$Res>
    extends _$DeviceAuthEventCopyWithImpl<$Res>
    implements _$$_AuthorizeCopyWith<$Res> {
  __$$_AuthorizeCopyWithImpl(
      _$_Authorize _value, $Res Function(_$_Authorize) _then)
      : super(_value, (v) => _then(v as _$_Authorize));

  @override
  _$_Authorize get _value => super._value as _$_Authorize;

  @override
  $Res call({
    Object? authRequest = freezed,
  }) {
    return _then(_$_Authorize(
      authRequest == freezed
          ? _value.authRequest
          : authRequest // ignore: cast_nullable_to_non_nullable
              as DeviceAuthRequest,
    ));
  }
}

/// @nodoc

class _$_Authorize implements _Authorize {
  const _$_Authorize(this.authRequest);

  @override
  final DeviceAuthRequest authRequest;

  @override
  String toString() {
    return 'DeviceAuthEvent.authorize(authRequest: $authRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authorize &&
            const DeepCollectionEquality()
                .equals(other.authRequest, authRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(authRequest));

  @JsonKey(ignore: true)
  @override
  _$$_AuthorizeCopyWith<_$_Authorize> get copyWith =>
      __$$_AuthorizeCopyWithImpl<_$_Authorize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceAuthRequest authRequest) authorize,
  }) {
    return authorize(authRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DeviceAuthRequest authRequest)? authorize,
  }) {
    return authorize?.call(authRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceAuthRequest authRequest)? authorize,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(authRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authorize value) authorize,
  }) {
    return authorize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Authorize value)? authorize,
  }) {
    return authorize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authorize value)? authorize,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(this);
    }
    return orElse();
  }
}

abstract class _Authorize implements DeviceAuthEvent {
  const factory _Authorize(final DeviceAuthRequest authRequest) = _$_Authorize;

  @override
  DeviceAuthRequest get authRequest;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorizeCopyWith<_$_Authorize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeviceAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authorized,
    required TResult Function(String message) unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function(String message)? unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function(String message)? unAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceAuthStateCopyWith<$Res> {
  factory $DeviceAuthStateCopyWith(
          DeviceAuthState value, $Res Function(DeviceAuthState) then) =
      _$DeviceAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceAuthStateCopyWithImpl<$Res>
    implements $DeviceAuthStateCopyWith<$Res> {
  _$DeviceAuthStateCopyWithImpl(this._value, this._then);

  final DeviceAuthState _value;
  // ignore: unused_field
  final $Res Function(DeviceAuthState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$DeviceAuthStateCopyWithImpl<$Res>
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
    return 'DeviceAuthState.initial()';
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
    required TResult Function() authorized,
    required TResult Function(String message) unAuthorized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function(String message)? unAuthorized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function(String message)? unAuthorized,
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
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DeviceAuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$DeviceAuthStateCopyWithImpl<$Res>
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
    return 'DeviceAuthState.loading()';
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
    required TResult Function() authorized,
    required TResult Function(String message) unAuthorized,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function(String message)? unAuthorized,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function(String message)? unAuthorized,
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
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DeviceAuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_AuthorizedCopyWith<$Res> {
  factory _$$_AuthorizedCopyWith(
          _$_Authorized value, $Res Function(_$_Authorized) then) =
      __$$_AuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthorizedCopyWithImpl<$Res>
    extends _$DeviceAuthStateCopyWithImpl<$Res>
    implements _$$_AuthorizedCopyWith<$Res> {
  __$$_AuthorizedCopyWithImpl(
      _$_Authorized _value, $Res Function(_$_Authorized) _then)
      : super(_value, (v) => _then(v as _$_Authorized));

  @override
  _$_Authorized get _value => super._value as _$_Authorized;
}

/// @nodoc

class _$_Authorized implements _Authorized {
  const _$_Authorized();

  @override
  String toString() {
    return 'DeviceAuthState.authorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authorized,
    required TResult Function(String message) unAuthorized,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function(String message)? unAuthorized,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function(String message)? unAuthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _Authorized implements DeviceAuthState {
  const factory _Authorized() = _$_Authorized;
}

/// @nodoc
abstract class _$$_UnAuthorizedCopyWith<$Res> {
  factory _$$_UnAuthorizedCopyWith(
          _$_UnAuthorized value, $Res Function(_$_UnAuthorized) then) =
      __$$_UnAuthorizedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_UnAuthorizedCopyWithImpl<$Res>
    extends _$DeviceAuthStateCopyWithImpl<$Res>
    implements _$$_UnAuthorizedCopyWith<$Res> {
  __$$_UnAuthorizedCopyWithImpl(
      _$_UnAuthorized _value, $Res Function(_$_UnAuthorized) _then)
      : super(_value, (v) => _then(v as _$_UnAuthorized));

  @override
  _$_UnAuthorized get _value => super._value as _$_UnAuthorized;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_UnAuthorized(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnAuthorized implements _UnAuthorized {
  const _$_UnAuthorized({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DeviceAuthState.unAuthorized(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnAuthorized &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_UnAuthorizedCopyWith<_$_UnAuthorized> get copyWith =>
      __$$_UnAuthorizedCopyWithImpl<_$_UnAuthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authorized,
    required TResult Function(String message) unAuthorized,
  }) {
    return unAuthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function(String message)? unAuthorized,
  }) {
    return unAuthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authorized,
    TResult Function(String message)? unAuthorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_UnAuthorized value) unAuthorized,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_UnAuthorized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements DeviceAuthState {
  const factory _UnAuthorized({required final String message}) =
      _$_UnAuthorized;

  String get message;
  @JsonKey(ignore: true)
  _$$_UnAuthorizedCopyWith<_$_UnAuthorized> get copyWith =>
      throw _privateConstructorUsedError;
}
