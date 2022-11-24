import 'package:dartz/dartz.dart';
import 'package:dummy_flutter/data/search_trailer/datastore/models/search_trailer_response.dart';
import 'package:dummy_flutter/domain/exception/search_trailer_exceptions.dart';

abstract class ISearchTrailerRepository {
  Future<Either<SearchTrailerExceptions, SearchTrailerResponse>> getTrailerInfo(
      {required String trailerId});
}
