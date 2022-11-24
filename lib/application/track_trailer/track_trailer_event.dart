part of 'track_trailer_bloc.dart';

@freezed
class TrackTrailerEvent with _$TrackTrailerEvent {
  const factory TrackTrailerEvent.onInitialTrackingCordinates({
    required final TrailerCoordinates coordinates,
  }) = _OnInitialTrackingCordinates;
}
