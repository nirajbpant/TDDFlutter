import 'package:logger/logger.dart';

import 'closable_tree.dart';
import 'log_level.dart';
import 'log_tree.dart';

/// Debug log tree. Tag generation included
class DebugTree extends LogTree implements CloseableTree {
  /// Default levels for logging a debug.
  static const List<LogLevel> defaultLevels = [
    LogLevel.d,
    LogLevel.i,
    LogLevel.w,
    LogLevel.e
  ];

  /// Log levels processed by this [DebugTree]
  final List<LogLevel> logLevels;
  late Logger logger;

  DebugTree({
    this.logLevels = defaultLevels,
    int methodCount = 2,
    int errorMethodCount = 8,
    int lineLength = 120,
    bool colors = true,
    bool printEmojis = true,
    bool printTime = false,
  }) {
    logger = Logger(
      printer: PrettyPrinter(
        methodCount: methodCount,
        errorMethodCount: errorMethodCount,
        lineLength: lineLength,
        colors: colors,
        printEmojis: printEmojis,
        printTime: printTime,
      ), // Use the PrettyPrinter to format and print log
    );
  }

  /// Creates elapsed time type Debug log tree
  /// with optional [logLevels] and [useColors]
  factory DebugTree.elapsed({
    List<LogLevel> logLevels = defaultLevels,
    int methodCount = 2,
    int errorMethodCount = 8,
    int lineLength = 120,
    bool colors = true,
    bool printEmojis = true,
    bool printTime = false,
  }) {
    return DebugTree(
      logLevels: logLevels,
      methodCount: methodCount,
      errorMethodCount: errorMethodCount,
      lineLength: lineLength,
      colors: colors,
      printEmojis: printEmojis,
      printTime: printTime,
    );
  }

  /// Logs [message] with [level]
  /// and optional [tag], [ex] (exception, [stacktrace]
  @override
  void log(
    LogLevel level,
    String? message, {
    String? tag,
    dynamic ex,
    StackTrace? stacktrace,
  }) {
    final logTag = tag ?? LogTree.getTag();
    late Level logLevel;
    switch (level) {
      case LogLevel.v:
        logLevel = Level.verbose;
        break;
      case LogLevel.d:
        logLevel = Level.debug;
        break;
      case LogLevel.i:
        logLevel = Level.info;
        break;
      case LogLevel.w:
        logLevel = Level.warning;
        break;
      case LogLevel.e:
        logLevel = Level.error;
        break;
    }
    logger.log(logLevel, "$logTag:\t $message", ex, stacktrace);
  }

  @override
  List<LogLevel> getLevels() {
    return logLevels;
  }

  @override
  void close() {
    logger.close();
  }
}
