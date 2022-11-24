import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dummy_flutter/config/constants/error_code_constants.dart';
import 'package:dummy_flutter/data/search_trailer/datastore/models/search_trailer_request.dart';
import 'package:dummy_flutter/domain/exception/connection_exception.dart';
import 'package:dummy_flutter/domain/exception/search_trailer_exceptions.dart';
import 'package:dummy_flutter/data/search_trailer/datastore/models/search_trailer_response.dart';
import 'package:dummy_flutter/domain/search_trailer/datastore/search_trailer_datastore.dart';
import 'package:dummy_flutter/domain/search_trailer/repository/search_trailer_repository.dart';

@LazySingleton(as: ISearchTrailerRepository)
class SearchTrailerRepositoryImpl extends ISearchTrailerRepository {
  final ISearchTrailerDataStore searchTrailerDataStore;
  SearchTrailerRepositoryImpl(this.searchTrailerDataStore);

  @override
  Future<Either<SearchTrailerExceptions, SearchTrailerResponse>> getTrailerInfo(
      {required String trailerId}) async {
    try {
      final response = await searchTrailerDataStore.getTrailerInfo(
          searchTrailerRequest: SearchTrailerRequest(trailerId: trailerId));
      if (response.errorCode == noErr) {
        return Right(response);
      } else {
        final exceptionCode = response.errorCode;
        final exception = SearchTrailerExceptions.getExceptions(exceptionCode);
        return Left(exception);
      }
    } on ConnectionException catch (_) {
      return const Left(SearchTrailerExceptions.noConnection());
    } on Exception catch (e) {
      if (e is DioError) {
        if (e.type == DioErrorType.connectTimeout) {
          return const Left(SearchTrailerExceptions.connectionTimeOut());
        }
      }
      return const Left(SearchTrailerExceptions.unKnownError());
    }
  }
}
