import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/exception/connection_exception.dart';
import '../../../domain/network/network_info.dart';

@injectable
class NetworkConnectionInterceptor extends Interceptor {
  final INetworkInfo networkInfo;

  NetworkConnectionInterceptor(this.networkInfo);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (await networkInfo.isConnected) {
      return super.onRequest(options, handler);
    }
    return handler.reject(
      DioError(
        requestOptions: options,
        error: ConnectionException(),
      ),
    );
  }
}
