import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_trailer_request.freezed.dart';
part 'search_trailer_request.g.dart';

@freezed
abstract class SearchTrailerRequest with _$SearchTrailerRequest {
  const factory SearchTrailerRequest({
    @JsonKey(name: "TrailerID") required String trailerId,
  }) = _SearchTrailerRequest;

  factory SearchTrailerRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchTrailerRequestFromJson(json);
}
