import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:last_fm/application/search/search_state_notifier_provider.dart';
import 'package:last_fm/domain/search/local/search_request.dart';
import 'package:last_fm/domain/search/track/search_track_response.dart';
import 'package:last_fm/domain/search/track/track.dart';
import 'package:last_fm/infrastructure/search/search_service.dart';
import 'package:last_fm/presentation/helpers/navigator_push.dart';
import 'package:last_fm/presentation/search/components/album_item.dart';
import 'package:last_fm/presentation/search/components/search_track/components/track_details.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class SearchTrack extends HookWidget {
  static const routeName = '/searchAlbum';

  @override
  Widget build(BuildContext context) {
    final searchStateNotifier =
        useProvider(searchStateNotifierProvider.notifier);
    final searchState = useProvider(searchStateNotifierProvider);

    final SearchService service = SearchService();

    Future<SearchTrackResponse> getData(int page, String request) async {
      var response = await service
          .searchTrack(SearchRequest(page: page, request: request));
      return response;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (searchState.totalAlbums != '')
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 16.0,
                ),
                child: Text(
                  'Total found: ${searchState.totalTracks}',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: LazyLoadScrollView(
                  onEndOfPage: () async {
                    var data = await getData(
                        searchStateNotifier.state.trackPage + 1,
                        searchStateNotifier.state.request);
                    List<Track> tempList = [];
                    tempList
                        .addAll(searchStateNotifier.state.searchTrackResult);
                    tempList.addAll(data.results.trackMatches.track);
                    searchStateNotifier.updateTrackList(tempList);
                    searchStateNotifier
                        .updateTrackPage(searchState.trackPage + 1);
                  },
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (_, index) {
                      return AlbumItem(
                        title: searchState.searchTrackResult[index].name,
                        subtitle: searchState.searchTrackResult[index].artist,
                        url: searchState
                            .searchTrackResult[index].image.last.text,
                        onTap: () => navigatorPush(
                          context,
                          TrackDetails(
                            track: searchState.searchTrackResult[index].name,
                            artist: searchState.searchTrackResult[index].artist,
                          ),
                        ),
                      );
                    },
                    itemCount: searchState.searchTrackResult.length,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
