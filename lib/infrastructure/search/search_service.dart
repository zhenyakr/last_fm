import 'package:last_fm/domain/search/local/search_request.dart';
import 'package:last_fm/infrastructure/search/search_album_api_service.dart';
import 'package:last_fm/infrastructure/search/search_artist_api_service.dart';
import 'package:last_fm/infrastructure/search/search_track_api_service.dart';

class SearchService {
  final _searchAlbumApiService = SearchAlbumApiService();
  final _searchArtistApiService = SearchArtistApiService();
  final _searchTrackApiService = SearchTrackApiService();

  Future<dynamic> searchAlbum(SearchRequest query) {
    return _searchAlbumApiService.searchAlbum(query);
  }

  Future<dynamic> searchArtist(SearchRequest query) {
    return _searchArtistApiService.searchArtist(query);
  }

  Future<dynamic> searchTrack(SearchRequest query) {
    return _searchTrackApiService.searchTrack(query);
  }
}
