import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dummy_flutter/data/search_trailer/datastore/models/lat_lng_coordinates.dart';

part 'trailer_map_screen_arguments.freezed.dart';

@freezed
abstract class TrailerCoordinates with _$TrailerCoordinates {
  const factory TrailerCoordinates({
    required String trailerId,
    required double longitude,
    required double latitude,
    required List<LatLngCoordiantes>? latLngResponseData,
  }) = _TrailerCoordinates;
}
