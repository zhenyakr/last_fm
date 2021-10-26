import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/search/artist/artist.dart';

part 'artist_matches.g.dart';

@JsonSerializable()
class ArtistMatches {
  ArtistMatches({
    required this.artist,
  });

  factory ArtistMatches.fromJson(Map<String, dynamic> json) =>
      _$ArtistMatchesFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistMatchesToJson(this);

  final List<Artist> artist;
}
