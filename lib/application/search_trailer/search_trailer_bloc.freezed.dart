// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_trailer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchTrailerEvent {
  String get trailerId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trailerId) getTrailerInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String trailerId)? getTrailerInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trailerId)? getTrailerInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrailerInfo value) getTrailerInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetTrailerInfo value)? getTrailerInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrailerInfo value)? getTrailerInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchTrailerEventCopyWith<SearchTrailerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTrailerEventCopyWith<$Res> {
  factory $SearchTrailerEventCopyWith(
          SearchTrailerEvent value, $Res Function(SearchTrailerEvent) then) =
      _$SearchTrailerEventCopyWithImpl<$Res>;
  $Res call({String trailerId});
}

/// @nodoc
class _$SearchTrailerEventCopyWithImpl<$Res>
    implements $SearchTrailerEventCopyWith<$Res> {
  _$SearchTrailerEventCopyWithImpl(this._value, this._then);

  final SearchTrailerEvent _value;
  // ignore: unused_field
  final $Res Function(SearchTrailerEvent) _then;

  @override
  $Res call({
    Object? trailerId = freezed,
  }) {
    return _then(_value.copyWith(
      trailerId: trailerId == freezed
          ? _value.trailerId
          : trailerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GetTrailerInfoCopyWith<$Res>
    implements $SearchTrailerEventCopyWith<$Res> {
  factory _$$_GetTrailerInfoCopyWith(
          _$_GetTrailerInfo value, $Res Function(_$_GetTrailerInfo) then) =
      __$$_GetTrailerInfoCopyWithImpl<$Res>;
  @override
  $Res call({String trailerId});
}

/// @nodoc
class __$$_GetTrailerInfoCopyWithImpl<$Res>
    extends _$SearchTrailerEventCopyWithImpl<$Res>
    implements _$$_GetTrailerInfoCopyWith<$Res> {
  __$$_GetTrailerInfoCopyWithImpl(
      _$_GetTrailerInfo _value, $Res Function(_$_GetTrailerInfo) _then)
      : super(_value, (v) => _then(v as _$_GetTrailerInfo));

  @override
  _$_GetTrailerInfo get _value => super._value as _$_GetTrailerInfo;

  @override
  $Res call({
    Object? trailerId = freezed,
  }) {
    return _then(_$_GetTrailerInfo(
      trailerId: trailerId == freezed
          ? _value.trailerId
          : trailerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetTrailerInfo implements _GetTrailerInfo {
  const _$_GetTrailerInfo({required this.trailerId});

  @override
  final String trailerId;

  @override
  String toString() {
    return 'SearchTrailerEvent.getTrailerInfo(trailerId: $trailerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTrailerInfo &&
            const DeepCollectionEquality().equals(other.trailerId, trailerId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(trailerId));

  @JsonKey(ignore: true)
  @override
  _$$_GetTrailerInfoCopyWith<_$_GetTrailerInfo> get copyWith =>
      __$$_GetTrailerInfoCopyWithImpl<_$_GetTrailerInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trailerId) getTrailerInfo,
  }) {
    return getTrailerInfo(trailerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String trailerId)? getTrailerInfo,
  }) {
    return getTrailerInfo?.call(trailerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trailerId)? getTrailerInfo,
    required TResult orElse(),
  }) {
    if (getTrailerInfo != null) {
      return getTrailerInfo(trailerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrailerInfo value) getTrailerInfo,
  }) {
    return getTrailerInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetTrailerInfo value)? getTrailerInfo,
  }) {
    return getTrailerInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrailerInfo value)? getTrailerInfo,
    required TResult orElse(),
  }) {
    if (getTrailerInfo != null) {
      return getTrailerInfo(this);
    }
    return orElse();
  }
}

abstract class _GetTrailerInfo implements SearchTrailerEvent {
  const factory _GetTrailerInfo({required final String trailerId}) =
      _$_GetTrailerInfo;

  @override
  String get trailerId;
  @override
  @JsonKey(ignore: true)
  _$$_GetTrailerInfoCopyWith<_$_GetTrailerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchTrailerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TrailerDetails trailerDetails) success,
    required TResult Function(String errMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailerDetails trailerDetails)? success,
    TResult Function(String errMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailerDetails trailerDetails)? success,
    TResult Function(String errMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTrailerStateCopyWith<$Res> {
  factory $SearchTrailerStateCopyWith(
          SearchTrailerState value, $Res Function(SearchTrailerState) then) =
      _$SearchTrailerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchTrailerStateCopyWithImpl<$Res>
    implements $SearchTrailerStateCopyWith<$Res> {
  _$SearchTrailerStateCopyWithImpl(this._value, this._then);

  final SearchTrailerState _value;
  // ignore: unused_field
  final $Res Function(SearchTrailerState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SearchTrailerStateCopyWithImpl<$Res>
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
    return 'SearchTrailerState.initial()';
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
    required TResult Function(TrailerDetails trailerDetails) success,
    required TResult Function(String errMessage) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailerDetails trailerDetails)? success,
    TResult Function(String errMessage)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailerDetails trailerDetails)? success,
    TResult Function(String errMessage)? failure,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchTrailerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SearchTrailerStateCopyWithImpl<$Res>
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
    return 'SearchTrailerState.loading()';
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
    required TResult Function(TrailerDetails trailerDetails) success,
    required TResult Function(String errMessage) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailerDetails trailerDetails)? success,
    TResult Function(String errMessage)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailerDetails trailerDetails)? success,
    TResult Function(String errMessage)? failure,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SearchTrailerState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call({TrailerDetails trailerDetails});

  $TrailerDetailsCopyWith<$Res> get trailerDetails;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$SearchTrailerStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? trailerDetails = freezed,
  }) {
    return _then(_$_Success(
      trailerDetails: trailerDetails == freezed
          ? _value.trailerDetails
          : trailerDetails // ignore: cast_nullable_to_non_nullable
              as TrailerDetails,
    ));
  }

  @override
  $TrailerDetailsCopyWith<$Res> get trailerDetails {
    return $TrailerDetailsCopyWith<$Res>(_value.trailerDetails, (value) {
      return _then(_value.copyWith(trailerDetails: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.trailerDetails});

  @override
  final TrailerDetails trailerDetails;

  @override
  String toString() {
    return 'SearchTrailerState.success(trailerDetails: $trailerDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality()
                .equals(other.trailerDetails, trailerDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(trailerDetails));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TrailerDetails trailerDetails) success,
    required TResult Function(String errMessage) failure,
  }) {
    return success(trailerDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailerDetails trailerDetails)? success,
    TResult Function(String errMessage)? failure,
  }) {
    return success?.call(trailerDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailerDetails trailerDetails)? success,
    TResult Function(String errMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(trailerDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SearchTrailerState {
  const factory _Success({required final TrailerDetails trailerDetails}) =
      _$_Success;

  TrailerDetails get trailerDetails;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  $Res call({String errMessage});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$SearchTrailerStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;

  @override
  $Res call({
    Object? errMessage = freezed,
  }) {
    return _then(_$_Failure(
      errMessage: errMessage == freezed
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({required this.errMessage});

  @override
  final String errMessage;

  @override
  String toString() {
    return 'SearchTrailerState.failure(errMessage: $errMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality()
                .equals(other.errMessage, errMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errMessage));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TrailerDetails trailerDetails) success,
    required TResult Function(String errMessage) failure,
  }) {
    return failure(errMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailerDetails trailerDetails)? success,
    TResult Function(String errMessage)? failure,
  }) {
    return failure?.call(errMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrailerDetails trailerDetails)? success,
    TResult Function(String errMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SearchTrailerState {
  const factory _Failure({required final String errMessage}) = _$_Failure;

  String get errMessage;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
