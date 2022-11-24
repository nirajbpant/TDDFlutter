import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_data.freezed.dart';
part 'login_response_data.g.dart';

@freezed
abstract class LoginResponseData with _$LoginResponseData {
  @JsonSerializable(explicitToJson: true)
  const factory LoginResponseData({
    @JsonKey(name: "FacilityCode") required String facilityCode,
    @JsonKey(name: "FacilityName") required String facilityName,
    @JsonKey(name: "ProfileTemplateID") required int profileTemplateId,
    @JsonKey(name: "RoleID") required int roleId,
    @JsonKey(name: "UserCode") required String userCode,
    @JsonKey(name: "UserName") required String username,
    @JsonKey(name: "ValidRoles") required List<String> validRoles,
  }) = _LoginResponseData;

  factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDataFromJson(json);
}
