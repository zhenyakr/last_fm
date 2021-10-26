import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:last_fm/application/search/search_state_notifier_provider.dart';
import 'package:last_fm/domain/search/artist/search_artist_response.dart';
import 'package:last_fm/domain/search/local/search_request.dart';
import 'package:last_fm/domain/search/track/search_track_response.dart';
import 'package:last_fm/infrastructure/search/search_service.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:last_fm/domain/search/album/search_album_response.dart';

class SearchBar extends HookWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchStateNotifier =
        useProvider(searchStateNotifierProvider.notifier);
    final SearchService service = SearchService();

    getInitData(int page, String request) async {
      var response = await service
          .searchAlbum(SearchRequest(request: request, page: page));
      var responseTrack = await service
          .searchTrack(SearchRequest(request: request, page: page));
      var responseArtist = await service
          .searchArtist(SearchRequest(request: request, page: page));

      if (response is SearchAlbumResponse) {
        searchStateNotifier
            .updateAlbumList(response.results.albumMatches.album);
        searchStateNotifier
            .updateTotalAlbumsCount(response.results.totalResults);
      }
      if (responseTrack is SearchTrackResponse) {
        searchStateNotifier
            .updateTrackList(responseTrack.results.trackMatches.track);
        searchStateNotifier
            .updateTotalTracksCount(responseTrack.results.totalResults);
      }
      if (responseArtist is SearchArtistResponse) {
        searchStateNotifier
            .updateArtistList(responseArtist.results.artistMatches.artist);
        searchStateNotifier
            .updateTotalArtistsCount(responseArtist.results.totalResults);
      }
    }

    return Container(
      height: 55,
      child: FloatingSearchBar(
        hint: 'Search...',
        scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
        transitionDuration: const Duration(milliseconds: 800),
        openAxisAlignment: 0.0,
        width: 600,
        debounceDelay: const Duration(milliseconds: 500),
        shadowColor: Colors.white,
        backdropColor: Colors.white,
        onQueryChanged: (query) {
          if (query == '') {
            searchStateNotifier.updateAlbumList([]);
            searchStateNotifier.updateTrackList([]);
            searchStateNotifier.updateArtistList([]);
            searchStateNotifier.updateTotalAlbumsCount('');
          } else {
            searchStateNotifier.updateRequest(query);
            getInitData(1, searchStateNotifier.state.request);
          }
        },
        actions: [
          FloatingSearchBarAction.searchToClear(
            showIfClosed: true,
          ),
        ],
        builder: (context, transition) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Material(
              color: Colors.white,
              elevation: 4.0,
            ),
          );
        },
      ),
    );
  }
}
