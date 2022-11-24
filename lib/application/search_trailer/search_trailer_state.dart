part of 'search_trailer_bloc.dart';

@freezed
class SearchTrailerState with _$SearchTrailerState {
  const factory SearchTrailerState.initial() = _Initial;
  const factory SearchTrailerState.loading() = _Loading;
  const factory SearchTrailerState.success(
      {required TrailerDetails trailerDetails}) = _Success;
  const factory SearchTrailerState.failure({required String errMessage}) =
      _Failure;
}
