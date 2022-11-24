import 'closable_tree.dart';
import 'log_level.dart';
import 'log_tree.dart';

class Log {
  static final List<String> _muteLevels = [];

  /// Logs VERBOSE level [message]
  /// with optional exception and stacktrace
  static void v(
    String message, {
    String? tag,
    dynamic ex,
    StackTrace? stacktrace,
  }) {
    log(LogLevel.v, message, tag: tag, ex: ex, stacktrace: stacktrace);
  }

  /// Logs DEBUG level [message]
  /// with optional exception and stacktrace
  static void d(
    String? message, {
    String? tag,
    dynamic ex,
    StackTrace? stacktrace,
  }) {
    log(LogLevel.d, message, tag: tag, ex: ex, stacktrace: stacktrace);
  }

  /// Logs INFO level [message]
  /// with optional exception and stacktrace
  static void i(
    String? message, {
    String? tag,
    dynamic ex,
    StackTrace? stacktrace,
  }) {
    log(LogLevel.i, message, tag: tag, ex: ex, stacktrace: stacktrace);
  }

  /// Logs WARNING level [message]
  /// with optional exception and stacktrace
  static void w(
    String message, {
    String? tag,
    dynamic ex,
    StackTrace? stacktrace,
  }) {
    log(LogLevel.w, message, tag: tag, ex: ex, stacktrace: stacktrace);
  }

  /// Logs ERROR level [message]
  /// with optional exception and stacktrace
  static void e(
    String message, {
    String? tag,
    dynamic ex,
    StackTrace? stacktrace,
  }) {
    log(LogLevel.e, message, tag: tag, ex: ex, stacktrace: stacktrace);
  }

  /// Logs ERROR level [message]
  /// with optional exception and stacktrace
  static void api({
    required String url,
    required String method,
    required dynamic parameter,
    required String response,
    required String pageName,
    required String duration,
    dynamic ex,
    StackTrace? stacktrace,
  }) {
    String message = "$url\n$method";
    if (parameter is String) {
      message = "$message\nParameter => $parameter";
    } else if (parameter is Map) {
      String stParamter = "Parameters => ";
      for (final entry in parameter.entries) {
        stParamter = "$stParamter\n${entry.key} : ${entry.value}";
      }
      message = "$message\n$stParamter";
    }
    message = "$message\nResponse : $response";
    message = "$message\nApiDuration : $duration ms";
    log(
      LogLevel.d,
      message,
      tag: "API Call => $pageName",
      ex: ex,
      stacktrace: stacktrace,
    );
  }

  /// Mute a log [level] for logging.
  /// Any log entries with the muted log level will be not printed.
  static void mute(String level) {
    if (!_muteLevels.contains(level)) _muteLevels.add(level);
  }

  /// UnMutes a log [level] for logging.
  /// Any log entries with the muted log level will be not printed.
  static void unmute(String level) {
    _muteLevels.removeWhere((it) => it == level);
  }

  /// Logs a [message] with provided [level]
  /// and optional [tag], [ex] and [stacktrace]
  static void log(
    LogLevel level,
    String? message, {
    String? tag,
    dynamic ex,
    StackTrace? stacktrace,
  }) {
    // ignore: iterable_contains_unrelated_type
    if (_muteLevels.contains(level)) {
      return; // skip logging if muted.
    }
    final List<LogTree>? loggersForTree = _trees[level];
    for (final LogTree logger in loggersForTree ?? []) {
      logger.log(
        level,
        message,
        tag: tag,
        ex: ex,
        stacktrace:
            stacktrace ?? (level == LogLevel.e ? StackTrace.current : null),
      );
    }
  }

  /// Plant a tree - the source that will receive log messages.
  static void plantTree(LogTree tree) {
    for (final level in tree.getLevels()) {
      List<LogTree>? logList = _trees[level];
      if (logList == null) {
        logList = [];
        _trees[level] = logList;
      }
      logList.add(tree);
    }
  }

  /// Un-plants a tree from
  static void unplantTree(LogTree tree) {
    if (tree is CloseableTree) {
      (tree as CloseableTree).close();
    }
    _trees.forEach((level, levelTrees) {
      levelTrees.remove(tree);
    });
  }

  /// Clear all trees from Fimber.
  static void clearAll() {
    // un-plant each tree
    _trees.values
        .toSet()
        .fold<List<LogTree>>(<LogTree>[], (buildList, newList) {
          buildList.addAll(newList);
          return buildList;
        })
        .toSet()
        .forEach(unplantTree);
    _trees.clear();
  }

  static final Map<LogLevel, List<LogTree>> _trees = {};
}
