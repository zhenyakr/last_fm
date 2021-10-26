import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/search/image_data.dart';

part 'artist.g.dart';

@JsonSerializable()
class Artist {
  Artist({
    required this.name,
    required this.listeners,
    required this.url,
    required this.image,
    required this.streamable,
    required this.mbid,
  });

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistToJson(this);

  final String name;
  final String listeners;
  final String mbid;
  final String url;
  final String streamable;
  final List<ImageData> image;
}
