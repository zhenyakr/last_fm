import 'package:last_fm/domain/search/local/album_details_request.dart';
import 'package:last_fm/infrastructure/details/album_details_api_service.dart';
import 'package:last_fm/infrastructure/details/artist_details_api_service.dart';
import 'package:last_fm/infrastructure/details/track_details_api_service.dart';

class DetailsService {
  final _albumDetailsApiService = AlbumDetailsApiService();
  final _artistDetailsApiService = ArtistDetailsApiService();
  final _trackDetailsApiService = TrackDetailsApiService();

  Future<dynamic> albumDetails(AlbumDetailsRequest query) {
    return _albumDetailsApiService.albumDetails(query);
  }

  Future<dynamic> artistDetails(String artist) {
    return _artistDetailsApiService.artistDetails(artist);
  }

  Future<dynamic> trackDetails(AlbumDetailsRequest query) {
    return _trackDetailsApiService.trackDetails(query);
  }
}
