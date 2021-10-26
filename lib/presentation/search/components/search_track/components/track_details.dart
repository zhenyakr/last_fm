import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:last_fm/application/track_details/track_details_future_provider.dart';
import 'package:last_fm/domain/search/local/album_details_request.dart';
import 'package:last_fm/presentation/helpers/loader.dart';

class TrackDetails extends HookWidget {
  const TrackDetails({
    Key? key,
    required this.artist,
    required this.track,
  }) : super(key: key);

  final String artist;
  final String track;

  @override
  Widget build(BuildContext context) {
    final details = useProvider(
      trackDetailsFutureProvider(
        AlbumDetailsRequest(
          artist: artist,
          album: track,
        ),
      ),
    );
    return details.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            title: Text(data.track.name),
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
                        data.track.album.image.last.text,
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
                    'Song name: ${data.track.name}',
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
                    'Author: ${data.track.album.artist}',
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
                    'Bio: ${data.track.wiki.summary}',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      loading: () => ExpandedLoader(),
      error: (e, o) {
        return Text(
          'Sorry, something went wrong',
        );
      },
    );
  }
}
