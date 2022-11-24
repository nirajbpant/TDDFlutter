import 'package:injectable/injectable.dart';

import 'dependencies.dart';

@LazySingleton(as: Dependencies, env: [Environment.prod])
class ProductionDependenciesImpl extends Dependencies {
  @override
  Future<void> plantLogTrees() async {}
}
