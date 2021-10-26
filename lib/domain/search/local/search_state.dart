import 'package:equatable/equatable.dart';
import 'package:last_fm/domain/search/album/album.dart';
import 'package:last_fm/domain/search/artist/artist.dart';
import 'package:last_fm/domain/search/track/track.dart';

class SearchState extends Equatable {
  SearchState({
    required this.searchAlbumResult,
    required this.searchTrackResult,
    required this.searchArtistResult,
    required this.request,
    required this.albumPage,
    required this.artistPage,
    required this.trackPage,
    required this.totalAlbums,
    required this.totalTracks,
    required this.totalArtists,
  });

  final List<Album> searchAlbumResult;
  final List<Track> searchTrackResult;
  final List<Artist> searchArtistResult;
  final String request;
  final int albumPage;
  final int artistPage;
  final int trackPage;
  final String totalAlbums;
  final String totalArtists;
  final String totalTracks;

  @override
  List<Object> get props => [
    searchAlbumResult,
    searchTrackResult,
    searchArtistResult,
    request,
    albumPage,
    artistPage,
    trackPage,
    totalAlbums,
    totalArtists,
    totalTracks,
  ];
}
