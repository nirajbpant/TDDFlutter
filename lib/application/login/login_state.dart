part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.error({required String messsage}) = _Error;
  const factory LoginState.successAndDeviceAuthorized(
      {required String authMessage}) = _SuccessAndDeviceAuthorized;
  const factory LoginState.successAndDeviceUnAuthorized() =
      _SuccessAndDeviceUnAuthorized;
}
