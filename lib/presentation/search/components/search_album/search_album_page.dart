import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:last_fm/application/search/search_state_notifier_provider.dart';
import 'package:last_fm/domain/search/album/album.dart';
import 'package:last_fm/domain/search/local/search_request.dart';
import 'package:last_fm/infrastructure/search/search_service.dart';
import 'package:last_fm/presentation/helpers/navigator_push.dart';
import 'package:last_fm/presentation/search/components/album_item.dart';
import 'package:last_fm/presentation/search/components/search_album/components/album_details.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:last_fm/domain/search/album/search_album_response.dart';

class SearchAlbum extends HookWidget {
  static const routeName = '/searchAlbum';

  @override
  Widget build(BuildContext context) {
    final searchStateNotifier =
        useProvider(searchStateNotifierProvider.notifier);
    final searchState = useProvider(searchStateNotifierProvider);

    final SearchService service = SearchService();

    Future<SearchAlbumResponse> getData(int page, String request) async {
      var response = await service
          .searchAlbum(SearchRequest(page: page, request: request));
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
                  'Total found: ${searchState.totalAlbums}',
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
                        searchStateNotifier.state.albumPage + 1,
                        searchStateNotifier.state.request);
                    List<Album> tempList = [];
                    tempList
                        .addAll(searchStateNotifier.state.searchAlbumResult);
                    tempList.addAll(data.results.albumMatches.album);
                    searchStateNotifier.updateAlbumList(tempList);
                    searchStateNotifier
                        .updateAlbumPage(searchState.albumPage + 1);
                  },
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (_, index) {
                      return AlbumItem(
                        title: searchState.searchAlbumResult[index].name,
                        subtitle: searchState.searchAlbumResult[index].artist,
                        url: searchState
                            .searchAlbumResult[index].image.last.text,
                        onTap: () => navigatorPush(
                          context,
                          AlbumDetails(
                            artist: searchState.searchAlbumResult[index].artist,
                            album: searchState.searchAlbumResult[index].name,
                          ),
                        ),
                      );
                    },
                    itemCount: searchState.searchAlbumResult.length,
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
