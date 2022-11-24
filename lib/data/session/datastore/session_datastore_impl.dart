import 'package:injectable/injectable.dart';
import 'package:dummy_flutter/data/session/datastore/models/login_request.dart';
import 'package:dummy_flutter/data/session/datastore/models/login_response.dart';
import 'package:dummy_flutter/data/session/session_api_service.dart';
import 'package:dummy_flutter/domain/exception/dio_error_extension.dart';
import 'package:dummy_flutter/domain/session/datastore/session_datastore.dart';

@LazySingleton(as: ISessionDataStore)
class SessionDataStoreImpl extends ISessionDataStore {
  final SessionApiService apiService;

  SessionDataStoreImpl(this.apiService);

  @override
  Future<LoginResponse> login({required LoginRequest loginRequest}) {
    return apiService.login(loginRequest: loginRequest).catchDioException();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
