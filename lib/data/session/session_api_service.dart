import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dummy_flutter/core/logger/log.dart';
import 'package:dummy_flutter/data/session/datastore/models/login_request.dart';
import 'package:dummy_flutter/data/session/datastore/models/login_response.dart';

@injectable
class SessionApiService {
  final Dio dio;

  SessionApiService(this.dio);

  Future<LoginResponse> login({required LoginRequest loginRequest}) async {
    final response = await dio.post('/LoginRoles', data: loginRequest.toJson());
    Log.d(response.toString());
    final value = LoginResponse.fromJson(response.data);
    return value;
  }
}
