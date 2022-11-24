import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../core/logger/log.dart';
import 'datastore/models/device_auth_request.dart';
import 'datastore/models/device_auth_response.dart';

@injectable
class DeviceAuthApiService {
  final Dio dio;

  DeviceAuthApiService(this.dio);

  Future<DeviceAuthResponse> authorize(DeviceAuthRequest authRequest) async {
    final response = await dio.post('/Activate', data: authRequest.toJson());
    Log.d("Auth Response ${response.data.toString()}");
    final value = DeviceAuthResponse.fromJson(response.data);
    return value;
  }
}
