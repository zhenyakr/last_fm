import 'package:dio/dio.dart';
import 'package:last_fm/domain/search/local/album_details_request.dart';
import 'package:last_fm/domain/track_details/track_form.dart';
import 'package:last_fm/infrastructure/constants/api_details.dart';

class TrackDetailsApiService {
  final _dio = Dio();

  Future<dynamic> trackDetails(AlbumDetailsRequest request) async {
    Map<String, dynamic> _query = {
      'method': 'track.getInfo',
      'api_key': apiKey,
      'artist': request.artist,
      'track': request.album,
      'format': 'json',
    };

    var response = await _dio.post(
      apiUrl,
      queryParameters: _query,
    );

    TrackForm trackForm;
    trackForm = TrackForm.fromJson(response.data);
    return trackForm;
  }
}
