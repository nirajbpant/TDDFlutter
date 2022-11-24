part of 'track_trailer_bloc.dart';

@freezed
class TrackTrailerState with _$TrackTrailerState {
  const factory TrackTrailerState.initial() = _Initial;
  const factory TrackTrailerState.loading() = _Loading;
  const factory TrackTrailerState.tracked({
    required final CameraPosition cameraPosition,
    required final Marker marker,
    required List<LatLngCoordiantes>? latLngResponseData,
  }) = _Tracked;
  const factory TrackTrailerState.failure({required final String errMessage}) =
      _Failure;
}
