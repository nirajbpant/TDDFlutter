import 'package:dummy_flutter/data/search_trailer/datastore/models/search_trailer_request.dart';
import 'package:dummy_flutter/data/search_trailer/datastore/models/search_trailer_response.dart';

abstract class ISearchTrailerDataStore {
  Future<SearchTrailerResponse> getTrailerInfo(
      {required SearchTrailerRequest searchTrailerRequest});
}
