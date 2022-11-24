// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceAuthResponse _$$_DeviceAuthResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DeviceAuthResponse(
      success: json['Success'] as bool,
      errorCode: json['ErrorCode'] as int,
      error: json['ErrorMessage'] as String,
    );

Map<String, dynamic> _$$_DeviceAuthResponseToJson(
        _$_DeviceAuthResponse instance) =>
    <String, dynamic>{
      'Success': instance.success,
      'ErrorCode': instance.errorCode,
      'ErrorMessage': instance.error,
    };
