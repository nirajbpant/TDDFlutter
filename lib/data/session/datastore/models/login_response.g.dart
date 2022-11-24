// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      success: json['Success'] as bool,
      errorMessage: json['ErrorMessage'] as String,
      errorCode: json['ErrorCode'] as int,
      data: json['Data'] == null
          ? null
          : LoginResponseData.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'Success': instance.success,
      'ErrorMessage': instance.errorMessage,
      'ErrorCode': instance.errorCode,
      'Data': instance.data?.toJson(),
    };
