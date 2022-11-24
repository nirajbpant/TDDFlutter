import 'dart:io' show Platform;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';

import '../../core/logger/log.dart';
import '../../data/session/managers/session_preference_manager.dart';
import 'device_info.dart';

@LazySingleton(as: DeviceInfo)
class DeviceInfoImpl extends DeviceInfo {
  final SessionPreferenceManager sessionPreferenceManager;

  DeviceInfoImpl(this.sessionPreferenceManager);
  @override
  Future<void> getDeviceId() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      final AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
      sessionPreferenceManager.deviceId = androidDeviceInfo.id;
      Log.d("Device info ${androidDeviceInfo.id}");
    } else if (Platform.isIOS) {
      final IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      sessionPreferenceManager.deviceId = iosDeviceInfo.identifierForVendor;
      Log.d("Device info ${iosDeviceInfo.identifierForVendor}");
    }
  }
}
