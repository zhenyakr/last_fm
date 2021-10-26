import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:last_fm/application/search/search_state_notifier_provider.dart';
import 'package:last_fm/domain/search/artist/artist.dart';
import 'package:last_fm/domain/search/artist/search_artist_response.dart';
import 'package:last_fm/domain/search/local/search_request.dart';
import 'package:last_fm/infrastructure/search/search_service.dart';
import 'package:last_fm/presentation/helpers/navigator_push.dart';
import 'package:last_fm/presentation/search/components/album_item.dart';
import 'package:last_fm/presentation/search/components/search_artist/components/artist_details.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class SearchArtist extends HookWidget {
  static const routeName = '/searchAlbum';

  @override
  Widget build(BuildContext context) {
    final searchStateNotifier =
        useProvider(searchStateNotifierProvider.notifier);
    final searchState = useProvider(searchStateNotifierProvider);

    final SearchService service = SearchService();

    Future<SearchArtistResponse> getData(int page, String request) async {
      var response = await service
          .searchArtist(SearchRequest(page: page, request: request));
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
                  'Total found: ${searchState.totalArtists}',
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
                        searchStateNotifier.state.artistPage + 1,
                        searchStateNotifier.state.request);
                    List<Artist> tempList = [];
                    tempList
                        .addAll(searchStateNotifier.state.searchArtistResult);
                    tempList.addAll(data.results.artistMatches.artist);
                    searchStateNotifier.updateArtistList(tempList);
                    searchStateNotifier
                        .updateArtistPage(searchState.artistPage + 1);
                  },
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (_, index) {
                      return AlbumItem(
                        title: searchState.searchArtistResult[index].name,
                        subtitle:
                            ' ${searchState.searchArtistResult[index].listeners} listeners',
                        url: searchState
                            .searchArtistResult[index].image.last.text,
                        onTap: () => navigatorPush(
                          context,
                          ArtistDetails(
                            artist: searchState.searchArtistResult[index].name,
                          ),
                        ),
                      );
                    },
                    itemCount: searchState.searchArtistResult.length,
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
