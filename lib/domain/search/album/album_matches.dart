import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/search/album/album.dart';

part 'album_matches.g.dart';

@JsonSerializable()
class AlbumMatches {
  AlbumMatches({
    required this.album,
  });

  factory AlbumMatches.fromJson(Map<String, dynamic> json) =>
      _$AlbumMatchesFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumMatchesToJson(this);

  final List<Album> album;
}
