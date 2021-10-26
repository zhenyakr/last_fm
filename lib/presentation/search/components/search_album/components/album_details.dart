import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:last_fm/application/album_details/album_details_future_provider.dart';
import 'package:last_fm/domain/search/local/album_details_request.dart';
import 'package:last_fm/presentation/helpers/error_page.dart';
import 'package:last_fm/presentation/helpers/loader.dart';

class AlbumDetails extends HookWidget {
  const AlbumDetails({
    Key? key,
    required this.artist,
    required this.album,
  }) : super(key: key);

  final String artist;
  final String album;

  @override
  Widget build(BuildContext context) {
    final details = useProvider(
      albumDetailsFutureProvider(
        AlbumDetailsRequest(
          album: album,
          artist: artist,
        ),
      ),
    );
    return details.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            title: Text(data.album.name),
            backgroundColor: Color(0xFFB30000),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        data.album.image.last.text,
                      ),
                      onError: (o, s) => Text(
                        'Sorry, something went wrong',
                      ),
                      scale: 1.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 10,
                  ),
                  child: Text(
                    'Artist: ${data.album.artist}',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 10,
                  ),
                  child: Text(
                    'Album: ${data.album.name}',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 10,
                  ),
                  child: Text(
                    'Listeners: ${data.album.listeners}',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                data.album.wiki != null
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 10,
                        ),
                        child: Text(
                          'Description: ${data.album.wiki?.summary}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      )
                    : Text('')
              ],
            ),
          ),
        );
      },
      loading: () => ExpandedLoader(),
      error: (e, o) {
        return ErrorPage();
      },
    );
  }
}
