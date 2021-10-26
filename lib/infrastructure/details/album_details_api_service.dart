import 'package:dio/dio.dart';
import 'package:last_fm/domain/album_details/album_form.dart';
import 'package:last_fm/domain/search/local/album_details_request.dart';
import 'package:last_fm/infrastructure/constants/api_details.dart';

class AlbumDetailsApiService {
  final _dio = Dio();

  Future<dynamic> albumDetails(AlbumDetailsRequest request) async {
    Map<String, dynamic> _query = {
      'method': 'album.getinfo',
      'api_key': apiKey,
      'artist': request.artist,
      'album': request.album,
      'format': 'json',
    };

    var response = await _dio.post(
      apiUrl,
      queryParameters: _query,
    );

    AlbumForm albumForm;
    albumForm = AlbumForm.fromJson(response.data);
    return albumForm;
  }
}
