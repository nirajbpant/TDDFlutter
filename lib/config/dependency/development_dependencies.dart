import 'package:injectable/injectable.dart';

import '../../core/logger/debug_tree.dart';
import '../../core/logger/log.dart';
import 'dependencies.dart';

@LazySingleton(as: Dependencies, env: [Environment.dev])
class DevelopmentDependenciesImpl extends Dependencies {
  @override
  Future<void> plantLogTrees() async {
    Log.plantTree(DebugTree());
  }
}
