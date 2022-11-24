// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_trailer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchTrailerRequest _$SearchTrailerRequestFromJson(Map<String, dynamic> json) {
  return _SearchTrailerRequest.fromJson(json);
}

/// @nodoc
mixin _$SearchTrailerRequest {
  @JsonKey(name: "TrailerID")
  String get trailerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchTrailerRequestCopyWith<SearchTrailerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTrailerRequestCopyWith<$Res> {
  factory $SearchTrailerRequestCopyWith(SearchTrailerRequest value,
          $Res Function(SearchTrailerRequest) then) =
      _$SearchTrailerRequestCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "TrailerID") String trailerId});
}

/// @nodoc
class _$SearchTrailerRequestCopyWithImpl<$Res>
    implements $SearchTrailerRequestCopyWith<$Res> {
  _$SearchTrailerRequestCopyWithImpl(this._value, this._then);

  final SearchTrailerRequest _value;
  // ignore: unused_field
  final $Res Function(SearchTrailerRequest) _then;

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
abstract class _$$_SearchTrailerRequestCopyWith<$Res>
    implements $SearchTrailerRequestCopyWith<$Res> {
  factory _$$_SearchTrailerRequestCopyWith(_$_SearchTrailerRequest value,
          $Res Function(_$_SearchTrailerRequest) then) =
      __$$_SearchTrailerRequestCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "TrailerID") String trailerId});
}

/// @nodoc
class __$$_SearchTrailerRequestCopyWithImpl<$Res>
    extends _$SearchTrailerRequestCopyWithImpl<$Res>
    implements _$$_SearchTrailerRequestCopyWith<$Res> {
  __$$_SearchTrailerRequestCopyWithImpl(_$_SearchTrailerRequest _value,
      $Res Function(_$_SearchTrailerRequest) _then)
      : super(_value, (v) => _then(v as _$_SearchTrailerRequest));

  @override
  _$_SearchTrailerRequest get _value => super._value as _$_SearchTrailerRequest;

  @override
  $Res call({
    Object? trailerId = freezed,
  }) {
    return _then(_$_SearchTrailerRequest(
      trailerId: trailerId == freezed
          ? _value.trailerId
          : trailerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchTrailerRequest implements _SearchTrailerRequest {
  const _$_SearchTrailerRequest(
      {@JsonKey(name: "TrailerID") required this.trailerId});

  factory _$_SearchTrailerRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SearchTrailerRequestFromJson(json);

  @override
  @JsonKey(name: "TrailerID")
  final String trailerId;

  @override
  String toString() {
    return 'SearchTrailerRequest(trailerId: $trailerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchTrailerRequest &&
            const DeepCollectionEquality().equals(other.trailerId, trailerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(trailerId));

  @JsonKey(ignore: true)
  @override
  _$$_SearchTrailerRequestCopyWith<_$_SearchTrailerRequest> get copyWith =>
      __$$_SearchTrailerRequestCopyWithImpl<_$_SearchTrailerRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchTrailerRequestToJson(this);
  }
}

abstract class _SearchTrailerRequest implements SearchTrailerRequest {
  const factory _SearchTrailerRequest(
          {@JsonKey(name: "TrailerID") required final String trailerId}) =
      _$_SearchTrailerRequest;

  factory _SearchTrailerRequest.fromJson(Map<String, dynamic> json) =
      _$_SearchTrailerRequest.fromJson;

  @override
  @JsonKey(name: "TrailerID")
  String get trailerId;
  @override
  @JsonKey(ignore: true)
  _$$_SearchTrailerRequestCopyWith<_$_SearchTrailerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
