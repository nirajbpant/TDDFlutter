import 'package:freezed_annotation/freezed_annotation.dart';

import '../../config/constants/error_code_constants.dart';

part 'search_trailer_exceptions.freezed.dart';

@freezed
abstract class SearchTrailerExceptions with _$SearchTrailerExceptions {
  const factory SearchTrailerExceptions.noConnection() = _NoConnection;
  const factory SearchTrailerExceptions.noSearchDataFound() =
      _NoSearchDataFound;

  const factory SearchTrailerExceptions.connectionTimeOut() =
      _ConnectionTimeOut;
  const factory SearchTrailerExceptions.unKnownError() = _UnKnownError;

  factory SearchTrailerExceptions.getExceptions(statusCode) {
    if (statusCode == noSearchedDataFound) {
      return const SearchTrailerExceptions.noSearchDataFound();
    }
    return const SearchTrailerExceptions.unKnownError();
  }
  static String getErrorMessage(SearchTrailerExceptions exceptions) {
    return exceptions.when(noSearchDataFound: () {
      return "No data found";
    }, connectionTimeOut: () {
      return "Server Error";
    }, unKnownError: () {
      return "Unknown Error";
    }, noConnection: () {
      return "No Internet Connection";
    });
  }
}
