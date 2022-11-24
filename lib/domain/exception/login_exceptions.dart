import 'package:freezed_annotation/freezed_annotation.dart';

import '../../config/constants/error_code_constants.dart';

part 'login_exceptions.freezed.dart';

@freezed
abstract class LoginExceptions with _$LoginExceptions {
  const factory LoginExceptions.noConnection() = _NoConnection;
  const factory LoginExceptions.deviceNotActivated() = _DeviceNotActivated;
  const factory LoginExceptions.connectionTimeOut() = _ConnectionTimeOut;
  const factory LoginExceptions.invalidUsername() = _InvalidUsername;
  const factory LoginExceptions.unKnownError() = _UnKnownError;

  factory LoginExceptions.getExceptions(statusCode) {
    if (statusCode == deviceNotActivated) {
      return const LoginExceptions.deviceNotActivated();
    } else if (statusCode == invalidUsername) {
      return const LoginExceptions.invalidUsername();
    }
    return const LoginExceptions.unKnownError();
  }

  static String getErrorMessage(LoginExceptions exceptions) {
    return exceptions.when(unKnownError: () {
      return "Unknown Error";
    }, connectionTimeOut: () {
      return "Error Connecting to the Servers";
    }, noConnection: () {
      return "No Internet Connection";
    }, deviceNotActivated: () {
      return "Device not activated";
    }, invalidUsername: () {
      return "Invalid Credentials";
    });
  }
}
