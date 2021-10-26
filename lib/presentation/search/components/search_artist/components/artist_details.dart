import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:last_fm/application/artist_details/artist_details_future_provider.dart';
import 'package:last_fm/presentation/helpers/loader.dart';

class ArtistDetails extends HookWidget {
  const ArtistDetails({
    Key? key,
    required this.artist,
  }) : super(key: key);

  final String artist;

  @override
  Widget build(BuildContext context) {
    final details = useProvider(artistDetailsFutureProvider(artist));
    return details.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            title: Text(data.artist.name),
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
                        data.artist.image.last.text,
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
                    'Artist: ${data.artist.name}',
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
                    'Bio: ${data.artist.bio.summary}',
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
