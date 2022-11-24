import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dummy_flutter/core/logger/log.dart';
import 'package:dummy_flutter/data/search_trailer/datastore/models/search_trailer_request.dart';
import 'package:dummy_flutter/data/search_trailer/datastore/models/search_trailer_response.dart';

@injectable
class SearchTrailerApiService {
  final Dio dio;

  SearchTrailerApiService(this.dio);

  Future<SearchTrailerResponse> getTrailerInfo(
      {required SearchTrailerRequest searchTrailerRequest}) async {
    final response =
        await dio.post('/Lookup', data: searchTrailerRequest.toJson());
    final value = SearchTrailerResponse.fromJson(response.data);
    Log.d(value.toString());
    return value;
  }
}
