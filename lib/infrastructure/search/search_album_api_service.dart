import 'package:dio/dio.dart';
import 'package:last_fm/domain/search/local/search_request.dart';
import 'package:last_fm/infrastructure/constants/api_details.dart';
import 'package:last_fm/domain/search/album/search_album_response.dart';

class SearchAlbumApiService {
  final _dio = Dio();

  Future<dynamic> searchAlbum(SearchRequest searchRequest) async {
    Map<String, dynamic> _query = {
      'method': 'album.search',
      'album': searchRequest.request,
      'api_key': apiKey,
      'format': 'json',
      'limit': 5,
      'page': searchRequest.page,
    };

    var response = await _dio.post(
      apiUrl,
      queryParameters: _query,
    );

    SearchAlbumResponse searchResponse;
    searchResponse = SearchAlbumResponse.fromJson(response.data);
    return searchResponse;
  }
}
