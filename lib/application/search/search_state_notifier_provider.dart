import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:last_fm/domain/search/album/album.dart';
import 'package:last_fm/domain/search/artist/artist.dart';
import 'package:last_fm/domain/search/local/search_state.dart';
import 'package:last_fm/domain/search/track/track.dart';

final searchStateNotifierProvider =
    StateNotifierProvider<PopularStateNotifier, SearchState>(
  (ref) => PopularStateNotifier(),
);

class PopularStateNotifier extends StateNotifier<SearchState> {
  PopularStateNotifier()
      : super(
          SearchState(
            artistPage: 1,
            trackPage: 1,
            albumPage: 1,
            request: '',
            totalAlbums: '',
            totalArtists: '',
            totalTracks: '',
            searchAlbumResult: [],
            searchArtistResult: [],
            searchTrackResult: [],
          ),
        );

  void updateAlbumList(List<Album> list) {
    state = SearchState(
      albumPage: state.albumPage,
      trackPage: state.trackPage,
      artistPage: state.artistPage,
      request: state.request,
      totalAlbums: state.totalAlbums,
      totalTracks: state.totalTracks,
      totalArtists: state.totalArtists,
      searchAlbumResult: list,
      searchTrackResult: state.searchTrackResult,
      searchArtistResult: state.searchArtistResult,
    );
  }

  void updateTrackList(List<Track> list) {
    state = SearchState(
      albumPage: state.albumPage,
      trackPage: state.trackPage,
      artistPage: state.artistPage,
      request: state.request,
      totalAlbums: state.totalAlbums,
      totalTracks: state.totalTracks,
      totalArtists: state.totalArtists,
      searchAlbumResult: state.searchAlbumResult,
      searchTrackResult: list,
      searchArtistResult: state.searchArtistResult,

    );
  }  void updateArtistList(List<Artist> list) {
    state = SearchState(
      albumPage: state.albumPage,
      trackPage: state.trackPage,
      artistPage: state.artistPage,
      request: state.request,
      totalAlbums: state.totalAlbums,
      totalTracks: state.totalTracks,
      totalArtists: state.totalArtists,
      searchAlbumResult: state.searchAlbumResult,
      searchTrackResult: state.searchTrackResult,
      searchArtistResult: list,
    );
  }

  void updateAlbumPage(int page) {
    state = SearchState(
      albumPage: page,
      trackPage: state.trackPage,
      artistPage: state.artistPage,
      request: state.request,
      searchAlbumResult: state.searchAlbumResult,
      searchTrackResult: state.searchTrackResult,
      searchArtistResult: state.searchArtistResult,
      totalAlbums: state.totalAlbums,
      totalTracks: state.totalTracks,
      totalArtists: state.totalArtists,
    );
  }

  void updateTrackPage(int page) {
    state = SearchState(
      albumPage: state.albumPage,
      trackPage: page,
      artistPage: state.artistPage,      request: state.request,
      searchAlbumResult: state.searchAlbumResult,
      searchTrackResult: state.searchTrackResult,
      searchArtistResult: state.searchArtistResult,
      totalAlbums: state.totalAlbums,
      totalTracks: state.totalTracks,
      totalArtists: state.totalArtists,
    );
  }

  void updateArtistPage(int page) {
    state = SearchState(
      albumPage: state.albumPage,
      trackPage: state.trackPage,
      artistPage: page,
      request: state.request,
      searchAlbumResult: state.searchAlbumResult,
      searchTrackResult: state.searchTrackResult,
      searchArtistResult: state.searchArtistResult,
      totalAlbums: state.totalAlbums,
      totalTracks: state.totalTracks,
      totalArtists: state.totalArtists,
    );
  }

  void updateRequest(String data) {
    state = SearchState(
      albumPage: state.albumPage,
      trackPage: state.trackPage,
      artistPage: state.artistPage,
      request: data,
      searchAlbumResult: state.searchAlbumResult,
      searchTrackResult: state.searchTrackResult,
      searchArtistResult: state.searchArtistResult,
      totalAlbums: state.totalAlbums,
      totalTracks: state.totalTracks,
      totalArtists: state.totalArtists,
    );
  }

  void updateTotalAlbumsCount(String data) {
    state = SearchState(
      albumPage: state.albumPage,
      trackPage: state.trackPage,
      artistPage: state.artistPage,      request: state.request,
      searchAlbumResult: state.searchAlbumResult,
      searchTrackResult: state.searchTrackResult,
      searchArtistResult: state.searchArtistResult,
      totalAlbums: data,
      totalTracks: state.totalTracks,
      totalArtists: state.totalArtists,
    );
  }

  void updateTotalTracksCount(String data) {
    state = SearchState(
      albumPage: state.albumPage,
      trackPage: state.trackPage,
      artistPage: state.artistPage,      request: state.request,
      searchAlbumResult: state.searchAlbumResult,
      searchTrackResult: state.searchTrackResult,
      searchArtistResult: state.searchArtistResult,
      totalAlbums: state.totalAlbums,
      totalTracks: data,
      totalArtists: state.totalArtists,
    );
  }

  void updateTotalArtistsCount(String data) {
    state = SearchState(
      albumPage: state.albumPage,
      trackPage: state.trackPage,
      artistPage: state.artistPage,      request: state.request,
      searchAlbumResult: state.searchAlbumResult,
      searchTrackResult: state.searchTrackResult,
      searchArtistResult: state.searchArtistResult,
      totalAlbums: state.totalAlbums,
      totalTracks: state.totalTracks,
      totalArtists: data,
    );
  }
}
