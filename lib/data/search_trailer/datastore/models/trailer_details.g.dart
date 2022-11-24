// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailer_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrailerDetails _$$_TrailerDetailsFromJson(Map<String, dynamic> json) =>
    _$_TrailerDetails(
      carrierCode: json['CarrierCode'] as String?,
      carrierName: json['CarrierName'] as String?,
      driverName: json['DriverName'] as String?,
      facilityCode: json['FacilityCode'] as String?,
      latLngResponseData: (json['LatLongResponseData'] as List<dynamic>?)
          ?.map((e) => LatLngCoordiantes.fromJson(e as Map<String, dynamic>))
          .toList(),
      latitude: json['Latitude'] as String?,
      locationCode: json['LocationCode'] as String?,
      longitude: json['Longitude'] as String?,
      phoneNumber: json['PhoneNumber'] as String?,
      pickupNumber: json['PickupNumber'] as String?,
      sequentialBarCode: json['SequentialBarcode'] as String?,
      trailerId: json['TrailerID'] as String,
      trailerNumber: json['TrailerNumber'] as String?,
      trailerStatusCode: json['TrailerStatusCode'] as String?,
      trailerTypeCode: json['TrailerTypeCode'] as String?,
      truckNumber: json['TruckNumber'] as String?,
    );

Map<String, dynamic> _$$_TrailerDetailsToJson(_$_TrailerDetails instance) =>
    <String, dynamic>{
      'CarrierCode': instance.carrierCode,
      'CarrierName': instance.carrierName,
      'DriverName': instance.driverName,
      'FacilityCode': instance.facilityCode,
      'LatLongResponseData':
          instance.latLngResponseData?.map((e) => e.toJson()).toList(),
      'Latitude': instance.latitude,
      'LocationCode': instance.locationCode,
      'Longitude': instance.longitude,
      'PhoneNumber': instance.phoneNumber,
      'PickupNumber': instance.pickupNumber,
      'SequentialBarcode': instance.sequentialBarCode,
      'TrailerID': instance.trailerId,
      'TrailerNumber': instance.trailerNumber,
      'TrailerStatusCode': instance.trailerStatusCode,
      'TrailerTypeCode': instance.trailerTypeCode,
      'TruckNumber': instance.truckNumber,
    };
