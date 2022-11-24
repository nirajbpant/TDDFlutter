import 'package:freezed_annotation/freezed_annotation.dart';
part 'device_auth_response.freezed.dart';
part 'device_auth_response.g.dart';

@freezed
abstract class DeviceAuthResponse with _$DeviceAuthResponse {
  const factory DeviceAuthResponse({
    @JsonKey(name: "Success") required bool success,
    @JsonKey(name: "ErrorCode") required int errorCode,
    @JsonKey(name: "ErrorMessage") required String error,
  }) = _DeviceAuthResponse;

  factory DeviceAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceAuthResponseFromJson(json);
}
