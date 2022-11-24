part of 'search_trailer_bloc.dart';

@freezed
class SearchTrailerEvent with _$SearchTrailerEvent {
  const factory SearchTrailerEvent.getTrailerInfo({required String trailerId}) =
      _GetTrailerInfo;
}
