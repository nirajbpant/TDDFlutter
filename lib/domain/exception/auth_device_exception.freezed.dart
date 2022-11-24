// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_device_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthDeviceExceptions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() invalidKey,
    required TResult Function() unKnownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? invalidKey,
    TResult Function()? unKnownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? invalidKey,
    TResult Function()? unKnownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_InvalidKey value) invalidKey,
    required TResult Function(_UnKnownError value) unKnownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_InvalidKey value)? invalidKey,
    TResult Function(_UnKnownError value)? unKnownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_InvalidKey value)? invalidKey,
    TResult Function(_UnKnownError value)? unKnownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDeviceExceptionsCopyWith<$Res> {
  factory $AuthDeviceExceptionsCopyWith(AuthDeviceExceptions value,
          $Res Function(AuthDeviceExceptions) then) =
      _$AuthDeviceExceptionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthDeviceExceptionsCopyWithImpl<$Res>
    implements $AuthDeviceExceptionsCopyWith<$Res> {
  _$AuthDeviceExceptionsCopyWithImpl(this._value, this._then);

  final AuthDeviceExceptions _value;
  // ignore: unused_field
  final $Res Function(AuthDeviceExceptions) _then;
}

/// @nodoc
abstract class _$$_NoConnectionCopyWith<$Res> {
  factory _$$_NoConnectionCopyWith(
          _$_NoConnection value, $Res Function(_$_NoConnection) then) =
      __$$_NoConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoConnectionCopyWithImpl<$Res>
    extends _$AuthDeviceExceptionsCopyWithImpl<$Res>
    implements _$$_NoConnectionCopyWith<$Res> {
  __$$_NoConnectionCopyWithImpl(
      _$_NoConnection _value, $Res Function(_$_NoConnection) _then)
      : super(_value, (v) => _then(v as _$_NoConnection));

  @override
  _$_NoConnection get _value => super._value as _$_NoConnection;
}

/// @nodoc

class _$_NoConnection implements _NoConnection {
  const _$_NoConnection();

  @override
  String toString() {
    return 'AuthDeviceExceptions.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() invalidKey,
    required TResult Function() unKnownError,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? invalidKey,
    TResult Function()? unKnownError,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? invalidKey,
    TResult Function()? unKnownError,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_InvalidKey value) invalidKey,
    required TResult Function(_UnKnownError value) unKnownError,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_InvalidKey value)? invalidKey,
    TResult Function(_UnKnownError value)? unKnownError,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_InvalidKey value)? invalidKey,
    TResult Function(_UnKnownError value)? unKnownError,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection implements AuthDeviceExceptions {
  const factory _NoConnection() = _$_NoConnection;
}

/// @nodoc
abstract class _$$_InvalidKeyCopyWith<$Res> {
  factory _$$_InvalidKeyCopyWith(
          _$_InvalidKey value, $Res Function(_$_InvalidKey) then) =
      __$$_InvalidKeyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidKeyCopyWithImpl<$Res>
    extends _$AuthDeviceExceptionsCopyWithImpl<$Res>
    implements _$$_InvalidKeyCopyWith<$Res> {
  __$$_InvalidKeyCopyWithImpl(
      _$_InvalidKey _value, $Res Function(_$_InvalidKey) _then)
      : super(_value, (v) => _then(v as _$_InvalidKey));

  @override
  _$_InvalidKey get _value => super._value as _$_InvalidKey;
}

/// @nodoc

class _$_InvalidKey implements _InvalidKey {
  const _$_InvalidKey();

  @override
  String toString() {
    return 'AuthDeviceExceptions.invalidKey()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidKey);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() invalidKey,
    required TResult Function() unKnownError,
  }) {
    return invalidKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? invalidKey,
    TResult Function()? unKnownError,
  }) {
    return invalidKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? invalidKey,
    TResult Function()? unKnownError,
    required TResult orElse(),
  }) {
    if (invalidKey != null) {
      return invalidKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_InvalidKey value) invalidKey,
    required TResult Function(_UnKnownError value) unKnownError,
  }) {
    return invalidKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_InvalidKey value)? invalidKey,
    TResult Function(_UnKnownError value)? unKnownError,
  }) {
    return invalidKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_InvalidKey value)? invalidKey,
    TResult Function(_UnKnownError value)? unKnownError,
    required TResult orElse(),
  }) {
    if (invalidKey != null) {
      return invalidKey(this);
    }
    return orElse();
  }
}

abstract class _InvalidKey implements AuthDeviceExceptions {
  const factory _InvalidKey() = _$_InvalidKey;
}

/// @nodoc
abstract class _$$_UnKnownErrorCopyWith<$Res> {
  factory _$$_UnKnownErrorCopyWith(
          _$_UnKnownError value, $Res Function(_$_UnKnownError) then) =
      __$$_UnKnownErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnKnownErrorCopyWithImpl<$Res>
    extends _$AuthDeviceExceptionsCopyWithImpl<$Res>
    implements _$$_UnKnownErrorCopyWith<$Res> {
  __$$_UnKnownErrorCopyWithImpl(
      _$_UnKnownError _value, $Res Function(_$_UnKnownError) _then)
      : super(_value, (v) => _then(v as _$_UnKnownError));

  @override
  _$_UnKnownError get _value => super._value as _$_UnKnownError;
}

/// @nodoc

class _$_UnKnownError implements _UnKnownError {
  const _$_UnKnownError();

  @override
  String toString() {
    return 'AuthDeviceExceptions.unKnownError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnKnownError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() invalidKey,
    required TResult Function() unKnownError,
  }) {
    return unKnownError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? invalidKey,
    TResult Function()? unKnownError,
  }) {
    return unKnownError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? invalidKey,
    TResult Function()? unKnownError,
    required TResult orElse(),
  }) {
    if (unKnownError != null) {
      return unKnownError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_InvalidKey value) invalidKey,
    required TResult Function(_UnKnownError value) unKnownError,
  }) {
    return unKnownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_InvalidKey value)? invalidKey,
    TResult Function(_UnKnownError value)? unKnownError,
  }) {
    return unKnownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_InvalidKey value)? invalidKey,
    TResult Function(_UnKnownError value)? unKnownError,
    required TResult orElse(),
  }) {
    if (unKnownError != null) {
      return unKnownError(this);
    }
    return orElse();
  }
}

abstract class _UnKnownError implements AuthDeviceExceptions {
  const factory _UnKnownError() = _$_UnKnownError;
}
