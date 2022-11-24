import 'package:dartz/dartz.dart';
import 'package:dummy_flutter/data/device_authorization/datastore/models/device_auth_request.dart';
import 'package:dummy_flutter/data/device_authorization/datastore/models/device_auth_response.dart';
import 'package:dummy_flutter/domain/exception/auth_device_exception.dart';

abstract class IDeviceAuthorizationRepository {
  Future<Either<AuthDeviceExceptions, DeviceAuthResponse>> authorize(
      DeviceAuthRequest authRequest);
}
