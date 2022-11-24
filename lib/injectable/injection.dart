import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../config/dependency/dependencies.dart';
import '../config/dependency/environment_config.dart';
import '../config/device_info/device_info.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() async {
  await EnvironmentConfig.intialize();
  await $initGetIt(
    getIt,
    environment: kReleaseMode ? Environment.prod : Environment.dev,
  );
  getIt<Dependencies>();
  getIt<DeviceInfo>();
}
