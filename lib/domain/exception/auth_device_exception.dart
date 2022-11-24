import 'package:freezed_annotation/freezed_annotation.dart';

import '../../config/constants/error_code_constants.dart';

part 'auth_device_exception.freezed.dart';

@freezed
abstract class AuthDeviceExceptions with _$AuthDeviceExceptions {
  const factory AuthDeviceExceptions.noConnection() = _NoConnection;
  const factory AuthDeviceExceptions.invalidKey() = _InvalidKey;
  const factory AuthDeviceExceptions.unKnownError() = _UnKnownError;

  factory AuthDeviceExceptions.getExceptions(statusCode) {
    if (statusCode == invalidKey) {
      return const AuthDeviceExceptions.invalidKey();
    }
    return const AuthDeviceExceptions.unKnownError();
  }

  static String getErrorMessage(AuthDeviceExceptions exceptions) {
    return exceptions.when(noConnection: () {
      return "No Internet Connection";
    }, invalidKey: () {
      return "Invalid Key";
    }, unKnownError: () {
      return "Unknown Error";
    });
  }
}
