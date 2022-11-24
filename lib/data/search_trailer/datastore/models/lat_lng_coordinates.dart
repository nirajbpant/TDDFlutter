import 'package:freezed_annotation/freezed_annotation.dart';

part 'lat_lng_coordinates.freezed.dart';
part 'lat_lng_coordinates.g.dart';

@freezed
abstract class LatLngCoordiantes with _$LatLngCoordiantes {
  const factory LatLngCoordiantes({
    @JsonKey(name: "Latitude") required String latitude,
    @JsonKey(name: "Longitude") required String longitude,
  }) = _LatLngCoordiantes;

  factory LatLngCoordiantes.fromJson(Map<String, dynamic> json) =>
      _$LatLngCoordiantesFromJson(json);
}
