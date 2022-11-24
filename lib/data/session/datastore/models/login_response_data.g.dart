// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseData _$$_LoginResponseDataFromJson(Map<String, dynamic> json) =>
    _$_LoginResponseData(
      facilityCode: json['FacilityCode'] as String,
      facilityName: json['FacilityName'] as String,
      profileTemplateId: json['ProfileTemplateID'] as int,
      roleId: json['RoleID'] as int,
      userCode: json['UserCode'] as String,
      username: json['UserName'] as String,
      validRoles: (json['ValidRoles'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_LoginResponseDataToJson(
        _$_LoginResponseData instance) =>
    <String, dynamic>{
      'FacilityCode': instance.facilityCode,
      'FacilityName': instance.facilityName,
      'ProfileTemplateID': instance.profileTemplateId,
      'RoleID': instance.roleId,
      'UserCode': instance.userCode,
      'UserName': instance.username,
      'ValidRoles': instance.validRoles,
    };
