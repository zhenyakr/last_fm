import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/search/image_data.dart';

part 'album.g.dart';

@JsonSerializable()
class Album {
  Album({
    required this.name,
    required this.artist,
    required this.url,
    required this.image,
    required this.streamable,
    required this.mbid,
  });

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumToJson(this);

  final String name;
  final String artist;
  final String url;
  final List<ImageData> image;
  final String streamable;
  final String mbid;
}
