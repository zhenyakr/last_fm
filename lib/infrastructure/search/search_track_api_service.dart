import 'package:dio/dio.dart';
import 'package:last_fm/domain/search/local/search_request.dart';
import 'package:last_fm/domain/search/track/search_track_response.dart';
import 'package:last_fm/infrastructure/constants/api_details.dart';

class SearchTrackApiService {
  final _dio = Dio();

  Future<dynamic> searchTrack(SearchRequest searchRequest) async {
    Map<String, dynamic> _query = {
      'method': 'track.search',
      'track': searchRequest.request,
      'api_key': apiKey,
      'format': 'json',
      'limit': 5,
      'page': searchRequest.page,
    };

    var response = await _dio.post(
      apiUrl,
      queryParameters: _query,
    );

    SearchTrackResponse searchResponse;
    searchResponse = SearchTrackResponse.fromJson(response.data);
    return searchResponse;
  }
}
