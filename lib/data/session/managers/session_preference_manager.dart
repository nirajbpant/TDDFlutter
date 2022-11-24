import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class SessionPreferenceManager {
  final SharedPreferences sharedPreferences;

  SessionPreferenceManager(this.sharedPreferences);

  String? get osToken => sharedPreferences.getString(osKey);
  set osToken(String? osToken) =>
      sharedPreferences.setString(osKey, osToken ?? "");

  String? get fullName => sharedPreferences.getString(fullNameKey);
  set fullName(String? fullName) =>
      sharedPreferences.setString(fullNameKey, fullName ?? "");

  String? get accountCode => sharedPreferences.getString(accountCodeKey);
  set accountCode(String? accountCode) =>
      sharedPreferences.setString(accountCodeKey, accountCode ?? "");

  String? get facilityCode => sharedPreferences.getString(facilityCodeKey);
  set facilityCode(String? facilityCode) =>
      sharedPreferences.setString(facilityCodeKey, facilityCode ?? "");

  String? get userCode => sharedPreferences.getString(userCodeKey);
  set userCode(String? userCode) =>
      sharedPreferences.setString(userCodeKey, userCode ?? "");

  String? get facilityName => sharedPreferences.getString(facilityNameKey);
  set facilityName(String? facilityName) =>
      sharedPreferences.setString(facilityNameKey, facilityName ?? "");

  String? get deviceId => sharedPreferences.getString(deviceIdKey);
  set deviceId(String? deviceId) =>
      sharedPreferences.setString(deviceIdKey, deviceId ?? "");

//
  void clearData() {
    sharedPreferences.remove(fullNameKey);
    sharedPreferences.remove(accountCodeKey);
    sharedPreferences.remove(facilityCodeKey);
    sharedPreferences.remove(userCodeKey);
    sharedPreferences.remove(facilityNameKey);
  }
}

const String osKey = "key:session:osToken";
const String fullNameKey = "key:session:fullName";
const String accountCodeKey = "key:session:accountCode";
const String facilityCodeKey = "key:session:facilityCode";
const String userCodeKey = "key:session:userCode";
const String facilityNameKey = "key:session:facilityName";
const String deviceIdKey = "key:session:device_id";
