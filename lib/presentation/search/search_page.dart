import 'package:flutter/material.dart';
import 'package:last_fm/presentation/search/components/search_album/search_album_page.dart';
import 'package:last_fm/presentation/search/components/search_artist/search_artist_page.dart';
import 'package:last_fm/presentation/search/components/search_bar.dart';
import 'package:last_fm/presentation/search/components/search_track/search_track_page.dart';

class SearchPage extends StatelessWidget {
  static const routeName = '/search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: 582,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SearchBar(),
                  DefaultTabController(
                    length: 3,
                    initialIndex: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TabBar(
                          unselectedLabelColor: Colors.black,
                          automaticIndicatorColorAdjustment: true,
                          indicatorColor: Color(0xFFB30000),
                          labelColor: Colors.black,
                          labelStyle: TextStyle(
                            fontSize: 16,
                          ),
                          tabs: [
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Albums',
                                ),
                              ),
                            ),
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Artists',
                                ),
                              ),
                            ),
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Tracks',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 650.0,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: Colors.grey,
                                width: 0.5,
                              ),
                            ),
                          ),
                          child: TabBarView(
                            children: <Widget>[
                              SearchAlbum(),
                              SearchArtist(),
                              SearchTrack(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
