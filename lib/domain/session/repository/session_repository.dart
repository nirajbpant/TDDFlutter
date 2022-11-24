import 'package:dartz/dartz.dart';
import 'package:dummy_flutter/data/session/datastore/models/login_request.dart';
import 'package:dummy_flutter/data/session/datastore/models/login_response.dart';
import 'package:dummy_flutter/domain/exception/login_exceptions.dart';

abstract class ISessionRepository {
  Future<Either<LoginExceptions, LoginResponse>> login(
      LoginRequest loginRequest);
  Future<String?> get userCode;
}
