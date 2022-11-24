import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:dummy_flutter/data/search_trailer/datastore/models/lat_lng_coordinates.dart';

import '../../config/navigation/models/trailer_map_screen_arguments.dart';
import '../../core/logger/log.dart';
import '../../domain/search_trailer/repository/search_trailer_repository.dart';

part 'track_trailer_bloc.freezed.dart';
part 'track_trailer_event.dart';
part 'track_trailer_state.dart';

@injectable
class TrackTrailerBloc extends Bloc<TrackTrailerEvent, TrackTrailerState> {
  final ISearchTrailerRepository searchTrailerRepository;
  late CameraPosition initialCameraPosition;
  late Marker cargoMarker;

  TrackTrailerBloc(this.searchTrailerRepository) : super(const _Initial()) {
    on<TrackTrailerEvent>((event, emit) async {
      emit(const TrackTrailerState.loading());
      await event.when(
        onInitialTrackingCordinates: (coordinates) {
          Log.d("Coordinates for initial tracking ${coordinates.toString()}");
          _setCameraPositionAndMarker(coordinates);
          emit(TrackTrailerState.tracked(
              cameraPosition: initialCameraPosition,
              marker: cargoMarker,
              latLngResponseData: coordinates.latLngResponseData));
        },
      );
    });
  }

  void _setCameraPositionAndMarker(TrailerCoordinates coordinates) {
    initialCameraPosition = CameraPosition(
        target: LatLng(coordinates.latitude, coordinates.longitude),
        zoom: 17.5);
    cargoMarker = Marker(
      markerId: const MarkerId('cargo'),
      position: LatLng(coordinates.latitude, coordinates.longitude),
      infoWindow: const InfoWindow(title: "Cargo"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }
}
