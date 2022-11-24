import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@freezed
abstract class LoginRequest with _$LoginRequest {
  @JsonSerializable(explicitToJson: true)
  const factory LoginRequest({
    @JsonKey(name: "UserName") required String username,
    @JsonKey(name: "Password") required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}
