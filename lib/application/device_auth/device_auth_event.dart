part of 'device_auth_bloc.dart';

@freezed
class DeviceAuthEvent with _$DeviceAuthEvent {
  const factory DeviceAuthEvent.authorize(DeviceAuthRequest authRequest) =
      _Authorize;
}
