// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_trailer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchTrailerResponse _$$_SearchTrailerResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchTrailerResponse(
      success: json['Success'] as bool,
      errorMessage: json['ErrorMessage'] as String?,
      errorCode: json['ErrorCode'] as int,
      data: json['Data'] == null
          ? null
          : TrailerDetails.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchTrailerResponseToJson(
        _$_SearchTrailerResponse instance) =>
    <String, dynamic>{
      'Success': instance.success,
      'ErrorMessage': instance.errorMessage,
      'ErrorCode': instance.errorCode,
      'Data': instance.data?.toJson(),
    };
