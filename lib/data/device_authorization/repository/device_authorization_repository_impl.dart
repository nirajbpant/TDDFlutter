import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../config/constants/error_code_constants.dart';
import '../../../domain/device_authorization/datastore/device_authorization_datastore.dart';
import '../../../domain/device_authorization/repository/device_authorization_repository.dart';
import '../../../domain/exception/auth_device_exception.dart';
import '../../../domain/exception/connection_exception.dart';
import '../datastore/models/device_auth_request.dart';
import '../datastore/models/device_auth_response.dart';

@LazySingleton(as: IDeviceAuthorizationRepository)
class DeviceAuthorizationRepositoryImpl
    implements IDeviceAuthorizationRepository {
  final IDeviceAuthorizationDataStore deviceAuthorizationDataStore;

  DeviceAuthorizationRepositoryImpl(this.deviceAuthorizationDataStore);

  @override
  Future<Either<AuthDeviceExceptions, DeviceAuthResponse>> authorize(
      DeviceAuthRequest authRequest) async {
    try {
      final result = await deviceAuthorizationDataStore.authorize(authRequest);

      if (result.errorCode != invalidKey) {
        return Right(result);
      } else {
        final exceptionCode = result.errorCode;
        final exception = AuthDeviceExceptions.getExceptions(exceptionCode);
        return Left(exception);
      }
    } on ConnectionException catch (_) {
      return const Left(AuthDeviceExceptions.noConnection());
    } catch (_) {
      return const Left(AuthDeviceExceptions.unKnownError());
    }
  }
}
