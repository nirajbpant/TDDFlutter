part of 'device_auth_bloc.dart';

@freezed
class DeviceAuthState with _$DeviceAuthState {
  const factory DeviceAuthState.initial() = _Initial;
  const factory DeviceAuthState.loading() = _Loading;
  const factory DeviceAuthState.authorized() = _Authorized;
  const factory DeviceAuthState.unAuthorized({required String message}) =
      _UnAuthorized;
}
