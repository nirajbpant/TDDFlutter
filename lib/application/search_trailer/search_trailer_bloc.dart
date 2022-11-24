import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:dummy_flutter/data/search_trailer/datastore/models/trailer_details.dart';
import 'package:dummy_flutter/domain/exception/search_trailer_exceptions.dart';
import 'package:dummy_flutter/domain/search_trailer/repository/search_trailer_repository.dart';

part 'search_trailer_event.dart';
part 'search_trailer_state.dart';
part 'search_trailer_bloc.freezed.dart';

@singleton
class SearchTrailerBloc extends Bloc<SearchTrailerEvent, SearchTrailerState> {
  final ISearchTrailerRepository searchTrailerRepository;
  SearchTrailerBloc(this.searchTrailerRepository) : super(const _Initial()) {
    on<SearchTrailerEvent>((event, emit) async {
      await event.when(getTrailerInfo: (trailerId) async {
        emit(const SearchTrailerState.loading());
        final result =
            await searchTrailerRepository.getTrailerInfo(trailerId: trailerId);
        result.fold((exception) {
          emit(
            exception.when(
              noConnection: () => SearchTrailerState.failure(
                errMessage: SearchTrailerExceptions.getErrorMessage(
                  const SearchTrailerExceptions.noConnection(),
                ),
              ),
              connectionTimeOut: () => SearchTrailerState.failure(
                errMessage: SearchTrailerExceptions.getErrorMessage(
                  const SearchTrailerExceptions.connectionTimeOut(),
                ),
              ),
              unKnownError: () => SearchTrailerState.failure(
                errMessage: SearchTrailerExceptions.getErrorMessage(
                  const SearchTrailerExceptions.unKnownError(),
                ),
              ),
              noSearchDataFound: () => SearchTrailerState.failure(
                errMessage: SearchTrailerExceptions.getErrorMessage(
                  const SearchTrailerExceptions.noSearchDataFound(),
                ),
              ),
            ),
          );
        }, (trailerDetails) {
          emit(
            SearchTrailerState.success(trailerDetails: trailerDetails.data!),
          );
        });
      });
    });
  }
}
