import 'package:dummy_flutter/data/device_authorization/datastore/models/device_auth_request.dart';
import 'package:dummy_flutter/data/device_authorization/datastore/models/device_auth_response.dart';

abstract class IDeviceAuthorizationDataStore {
  Future<DeviceAuthResponse> authorize(DeviceAuthRequest authRequest);
}
