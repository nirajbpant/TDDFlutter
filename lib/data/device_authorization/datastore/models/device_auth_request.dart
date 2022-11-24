import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_auth_request.freezed.dart';
part 'device_auth_request.g.dart';

@freezed
abstract class DeviceAuthRequest with _$DeviceAuthRequest {
  const factory DeviceAuthRequest({
    @JsonKey(name: "ActivationKey") required String activationKey,
  }) = _DeviceAuthRequest;

  factory DeviceAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$DeviceAuthRequestFromJson(json);
}
