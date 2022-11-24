import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dummy_flutter/data/session/datastore/models/login_response_data.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  @JsonSerializable(explicitToJson: true)
  const factory LoginResponse({
    @JsonKey(name: "Success") required bool success,
    @JsonKey(name: "ErrorMessage") required String errorMessage,
    @JsonKey(name: "ErrorCode") required int errorCode,
    @JsonKey(name: "Data") LoginResponseData? data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
