import 'package:dio/dio.dart';
import 'package:last_fm/domain/search/artist/search_artist_response.dart';
import 'package:last_fm/domain/search/local/search_request.dart';
import 'package:last_fm/infrastructure/constants/api_details.dart';

class SearchArtistApiService {
  final _dio = Dio();

  Future<dynamic> searchArtist(SearchRequest searchRequest) async {
    Map<String, dynamic> _query = {
      'method': 'artist.search',
      'artist': searchRequest.request,
      'api_key': apiKey,
      'format': 'json',
      'limit': 5,
      'page': searchRequest.page,
    };

    var response = await _dio.post(
      apiUrl,
      queryParameters: _query,
    );

    SearchArtistResponse searchResponse;
    searchResponse = SearchArtistResponse.fromJson(response.data);
    return searchResponse;
  }
}
