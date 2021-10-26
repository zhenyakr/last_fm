import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:last_fm/presentation/search/components/search_album/search_album_page.dart';
import 'package:last_fm/presentation/search/search_page.dart';

void main() {
  runApp(
    LastFmApp(),
  );
}

class LastFmApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SearchPage.routeName,
        routes: {
          SearchPage.routeName: (context) => SearchPage(),
          SearchAlbum.routeName: (context) => SearchAlbum(),
        },
      ),
    );
  }
}
