import 'package:injectable/injectable.dart';
import 'package:dummy_flutter/data/search_trailer/datastore/models/search_trailer_request.dart';
import 'package:dummy_flutter/data/search_trailer/datastore/models/search_trailer_response.dart';
import 'package:dummy_flutter/data/search_trailer/search_trailer_api_service.dart';
import 'package:dummy_flutter/domain/exception/dio_error_extension.dart';
import 'package:dummy_flutter/domain/search_trailer/datastore/search_trailer_datastore.dart';

@LazySingleton(as: ISearchTrailerDataStore)
class SearchTrailerDataStoreImpl extends ISearchTrailerDataStore {
  final SearchTrailerApiService apiService;

  SearchTrailerDataStoreImpl(this.apiService);
  @override
  Future<SearchTrailerResponse> getTrailerInfo(
      {required SearchTrailerRequest searchTrailerRequest}) {
    return apiService
        .getTrailerInfo(searchTrailerRequest: searchTrailerRequest)
        .catchDioException();
  }
}
