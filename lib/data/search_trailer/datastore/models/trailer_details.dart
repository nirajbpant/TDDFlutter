import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dummy_flutter/data/search_trailer/datastore/models/lat_lng_coordinates.dart';
part 'trailer_details.freezed.dart';
part 'trailer_details.g.dart';

@freezed
abstract class TrailerDetails with _$TrailerDetails {
  @JsonSerializable(explicitToJson: true)
  const factory TrailerDetails({
    @JsonKey(name: "CarrierCode") required String? carrierCode,
    @JsonKey(name: "CarrierName") required String? carrierName,
    @JsonKey(name: "DriverName") required String? driverName,
    @JsonKey(name: "FacilityCode") required String? facilityCode,
    @JsonKey(name: "LatLongResponseData")
        required List<LatLngCoordiantes>? latLngResponseData,
    @JsonKey(name: "Latitude") required String? latitude,
    @JsonKey(name: "LocationCode") required String? locationCode,
    @JsonKey(name: "Longitude") required String? longitude,
    @JsonKey(name: "PhoneNumber") required String? phoneNumber,
    @JsonKey(name: "PickupNumber") required String? pickupNumber,
    @JsonKey(name: "SequentialBarcode") required String? sequentialBarCode,
    @JsonKey(name: "TrailerID") required String trailerId,
    @JsonKey(name: "TrailerNumber") required String? trailerNumber,
    @JsonKey(name: "TrailerStatusCode") required String? trailerStatusCode,
    @JsonKey(name: "TrailerTypeCode") required String? trailerTypeCode,
    @JsonKey(name: "TruckNumber") required String? truckNumber,
  }) = _TrailerDetails;

  factory TrailerDetails.fromJson(Map<String, dynamic> json) =>
      _$TrailerDetailsFromJson(json);
}
