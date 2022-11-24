// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_trailer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchTrailerResponse _$SearchTrailerResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchTrailerResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchTrailerResponse {
  @JsonKey(name: "Success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "ErrorMessage")
  String? get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: "ErrorCode")
  int get errorCode => throw _privateConstructorUsedError;
  @JsonKey(name: "Data")
  TrailerDetails? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchTrailerResponseCopyWith<SearchTrailerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTrailerResponseCopyWith<$Res> {
  factory $SearchTrailerResponseCopyWith(SearchTrailerResponse value,
          $Res Function(SearchTrailerResponse) then) =
      _$SearchTrailerResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Success") bool success,
      @JsonKey(name: "ErrorMessage") String? errorMessage,
      @JsonKey(name: "ErrorCode") int errorCode,
      @JsonKey(name: "Data") TrailerDetails? data});

  $TrailerDetailsCopyWith<$Res>? get data;
}

/// @nodoc
class _$SearchTrailerResponseCopyWithImpl<$Res>
    implements $SearchTrailerResponseCopyWith<$Res> {
  _$SearchTrailerResponseCopyWithImpl(this._value, this._then);

  final SearchTrailerResponse _value;
  // ignore: unused_field
  final $Res Function(SearchTrailerResponse) _then;

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
              as String?,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TrailerDetails?,
    ));
  }

  @override
  $TrailerDetailsCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TrailerDetailsCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_SearchTrailerResponseCopyWith<$Res>
    implements $SearchTrailerResponseCopyWith<$Res> {
  factory _$$_SearchTrailerResponseCopyWith(_$_SearchTrailerResponse value,
          $Res Function(_$_SearchTrailerResponse) then) =
      __$$_SearchTrailerResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Success") bool success,
      @JsonKey(name: "ErrorMessage") String? errorMessage,
      @JsonKey(name: "ErrorCode") int errorCode,
      @JsonKey(name: "Data") TrailerDetails? data});

  @override
  $TrailerDetailsCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_SearchTrailerResponseCopyWithImpl<$Res>
    extends _$SearchTrailerResponseCopyWithImpl<$Res>
    implements _$$_SearchTrailerResponseCopyWith<$Res> {
  __$$_SearchTrailerResponseCopyWithImpl(_$_SearchTrailerResponse _value,
      $Res Function(_$_SearchTrailerResponse) _then)
      : super(_value, (v) => _then(v as _$_SearchTrailerResponse));

  @override
  _$_SearchTrailerResponse get _value =>
      super._value as _$_SearchTrailerResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? errorMessage = freezed,
    Object? errorCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_SearchTrailerResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TrailerDetails?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SearchTrailerResponse implements _SearchTrailerResponse {
  const _$_SearchTrailerResponse(
      {@JsonKey(name: "Success") required this.success,
      @JsonKey(name: "ErrorMessage") required this.errorMessage,
      @JsonKey(name: "ErrorCode") required this.errorCode,
      @JsonKey(name: "Data") required this.data});

  factory _$_SearchTrailerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchTrailerResponseFromJson(json);

  @override
  @JsonKey(name: "Success")
  final bool success;
  @override
  @JsonKey(name: "ErrorMessage")
  final String? errorMessage;
  @override
  @JsonKey(name: "ErrorCode")
  final int errorCode;
  @override
  @JsonKey(name: "Data")
  final TrailerDetails? data;

  @override
  String toString() {
    return 'SearchTrailerResponse(success: $success, errorMessage: $errorMessage, errorCode: $errorCode, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchTrailerResponse &&
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
  _$$_SearchTrailerResponseCopyWith<_$_SearchTrailerResponse> get copyWith =>
      __$$_SearchTrailerResponseCopyWithImpl<_$_SearchTrailerResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchTrailerResponseToJson(this);
  }
}

abstract class _SearchTrailerResponse implements SearchTrailerResponse {
  const factory _SearchTrailerResponse(
          {@JsonKey(name: "Success") required final bool success,
          @JsonKey(name: "ErrorMessage") required final String? errorMessage,
          @JsonKey(name: "ErrorCode") required final int errorCode,
          @JsonKey(name: "Data") required final TrailerDetails? data}) =
      _$_SearchTrailerResponse;

  factory _SearchTrailerResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchTrailerResponse.fromJson;

  @override
  @JsonKey(name: "Success")
  bool get success;
  @override
  @JsonKey(name: "ErrorMessage")
  String? get errorMessage;
  @override
  @JsonKey(name: "ErrorCode")
  int get errorCode;
  @override
  @JsonKey(name: "Data")
  TrailerDetails? get data;
  @override
  @JsonKey(ignore: true)
  _$$_SearchTrailerResponseCopyWith<_$_SearchTrailerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
