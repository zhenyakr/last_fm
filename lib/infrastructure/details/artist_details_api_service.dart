import 'package:dio/dio.dart';
import 'package:last_fm/domain/artist_details/artist_form.dart';
import 'package:last_fm/infrastructure/constants/api_details.dart';

class ArtistDetailsApiService {
  final _dio = Dio();

  Future<dynamic> artistDetails(String request) async {
    Map<String, dynamic> _query = {
      'method': 'artist.getinfo',
      'api_key': apiKey,
      'artist': request,
      'format': 'json',
    };

    var response = await _dio.post(
      apiUrl,
      queryParameters: _query,
    );

    ArtistForm artistForm;
    artistForm = ArtistForm.fromJson(response.data);
    return artistForm;
  }
}
