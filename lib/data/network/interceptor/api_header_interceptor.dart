import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:dummy_flutter/core/logger/log.dart';

import '../../../domain/session/repository/session_repository.dart';
import '../../../injectable/injection.dart';
import '../../session/managers/session_preference_manager.dart';

@injectable
class ApiHeadersInterceptor extends Interceptor {
  SessionPreferenceManager sessionPreferenceManager;
  ApiHeadersInterceptor(this.sessionPreferenceManager);

  ISessionRepository get _sessionRepository => getIt<ISessionRepository>();

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final deviceId = sessionPreferenceManager.deviceId;
    final apiSalt = dotenv.env['API_SALT']!;
    if (deviceId != null) {
      final encryptedToken = getEncryptedToken(value: apiSalt + deviceId);
      Log.d("Encrypted Token $encryptedToken");
      options.headers.addAll({"EXOTRAC-DEVICEID": deviceId});
      options.headers.addAll({"EXOTRAC-TOKEN": encryptedToken});
    }
    super.onRequest(options, handler);
  }

  String getEncryptedToken({required String value}) {
    final bytes = utf8.encode(value);
    String digest = sha512.convert(bytes).toString();
    return digest.toUpperCase();
  }
}
