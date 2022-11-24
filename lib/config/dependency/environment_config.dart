import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentConfig {
  static Future<void> get development async =>
      dotenv.load(fileName: "assets/env/.env_dev");
  static Future<void> get production async =>
      dotenv.load(fileName: "assets/env/.env_prod");

  static Future intialize() async {
    if (kReleaseMode) {
      await EnvironmentConfig.production;
    } else {
      await EnvironmentConfig.development;
    }

    log("Environment loaded : ${dotenv.env}");
  }
}
