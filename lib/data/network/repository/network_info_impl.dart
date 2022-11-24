// Package imports:
// ignore: import_of_legacy_library_into_null_safe
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/network/network_info.dart';

// Project imports:

@LazySingleton(as: INetworkInfo)
class NetworkInfoImpl implements INetworkInfo {
  final connectionChecker = DataConnectionChecker();

  NetworkInfoImpl();

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
