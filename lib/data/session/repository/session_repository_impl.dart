import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dummy_flutter/config/constants/error_code_constants.dart';
import 'package:dummy_flutter/data/session/datastore/models/login_response.dart';
import 'package:dummy_flutter/data/session/datastore/models/login_request.dart';
import 'package:dummy_flutter/data/session/managers/session_preference_manager.dart';
import 'package:dummy_flutter/domain/exception/connection_exception.dart';
import 'package:dummy_flutter/domain/exception/login_exceptions.dart';
import 'package:dummy_flutter/domain/session/datastore/session_datastore.dart';
import 'package:dummy_flutter/domain/session/repository/session_repository.dart';

@LazySingleton(as: ISessionRepository)
class SessionRepositoryImpl extends ISessionRepository {
  final ISessionDataStore sessionDataStore;
  final SessionPreferenceManager sessionPreferenceManager;
  SessionRepositoryImpl(this.sessionPreferenceManager, this.sessionDataStore);

  @override
  Future<String?> get userCode async => sessionPreferenceManager.userCode;

  @override
  Future<Either<LoginExceptions, LoginResponse>> login(
      LoginRequest loginRequest) async {
    try {
      final response = await sessionDataStore.login(loginRequest: loginRequest);
      if (response.errorCode == noErr) {
        sessionPreferenceManager.userCode = response.data!.userCode;
        return Right(response);
      } else {
        final exceptionCode = response.errorCode;
        final exception = LoginExceptions.getExceptions(exceptionCode);
        return Left(exception);
      }
    } on ConnectionException catch (_) {
      return const Left(LoginExceptions.noConnection());
    } on Exception catch (e) {
      if (e is DioError) {
        if (e.type == DioErrorType.connectTimeout) {
          return const Left(LoginExceptions.connectionTimeOut());
        }
      }
      return const Left(LoginExceptions.unKnownError());
    }
  }
}
