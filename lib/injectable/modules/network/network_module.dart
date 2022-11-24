import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

import '../../../core/logger/http_formatter.dart';
import '../../../data/network/interceptor/api_header_interceptor.dart';
import '../../../data/network/interceptor/network_interceptor.dart';

@module
abstract class NetworkModule {
  HttpFormatter get httpFormatter => HttpFormatter(
        includeRequestHeaders: true,
        includeHeaders: ["EXOTRAC-DEVICEID", "Authorization", "EXOTRAC-TOKEN"],
      );

  Dio getDio(
    NetworkConnectionInterceptor networkConnectionInterceptor,
    HttpFormatter httpFormatter,
    ApiHeadersInterceptor apiHeaders,
  ) {
    final dio = Dio(
      BaseOptions(baseUrl: dotenv.env['API_URL']!),
    );
    dio
      ..interceptors.add(networkConnectionInterceptor)
      ..interceptors.add(apiHeaders);
    if (!kReleaseMode) {
      dio.interceptors.add(httpFormatter);
    }
    return dio;
  }
}
