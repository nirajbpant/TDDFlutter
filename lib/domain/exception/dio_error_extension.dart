import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../core/logger/log.dart';
import 'connection_exception.dart';
import 'unexpected_exception.dart';

extension DioErrorExtension<T> on Future<T> {
  Future<T> catchDioException() {
    return catchError((Object obj) async {
      if (!kReleaseMode) {
        Log.e(obj.toString(), ex: obj, tag: "DioErrorExtension");
      }
      switch (obj.runtimeType) {
        case DioError:
          final error = (obj as DioError).error;
          // if (error is RefreshException) {
          //   final sessionRepository = getIt<ISessionRepository>();
          //   await sessionRepository.logout(clearApi: false);
          //   throw error;
          // }
          if (error is ConnectionException) {
            throw error;
          }
          throw obj;
        default:
          throw UnexpectedException();
      }
    });
  }
}
