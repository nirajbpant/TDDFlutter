import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dummy_flutter/data/search_trailer/datastore/models/trailer_details.dart';

part 'search_trailer_response.freezed.dart';
part 'search_trailer_response.g.dart';

@freezed
abstract class SearchTrailerResponse with _$SearchTrailerResponse {
  @JsonSerializable(explicitToJson: true)
  const factory SearchTrailerResponse({
    @JsonKey(name: "Success") required bool success,
    @JsonKey(name: "ErrorMessage") required String? errorMessage,
    @JsonKey(name: "ErrorCode") required int errorCode,
    @JsonKey(name: "Data") required TrailerDetails? data,
  }) = _SearchTrailerResponse;

  factory SearchTrailerResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchTrailerResponseFromJson(json);
}
