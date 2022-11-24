import 'package:injectable/injectable.dart';

import '../../../domain/device_authorization/datastore/device_authorization_datastore.dart';
import '../../../domain/exception/dio_error_extension.dart';
import '../device_auth_api_service.dart';
import 'models/device_auth_request.dart';
import 'models/device_auth_response.dart';

@LazySingleton(as: IDeviceAuthorizationDataStore)
class DeviceAuthorizationDataStoreImpl
    implements IDeviceAuthorizationDataStore {
  final DeviceAuthApiService deviceAuthApiService;

  DeviceAuthorizationDataStoreImpl(this.deviceAuthApiService);

  @override
  Future<DeviceAuthResponse> authorize(DeviceAuthRequest authRequest) {
    return deviceAuthApiService.authorize(authRequest).catchDioException();
  }
}
