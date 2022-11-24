import 'package:dummy_flutter/data/session/datastore/models/login_request.dart';
import 'package:dummy_flutter/data/session/datastore/models/login_response.dart';

abstract class ISessionDataStore {
  Future<LoginResponse> login({required LoginRequest loginRequest});

  Future<void> logout();
}
