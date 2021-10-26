import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/album_details/wiki.dart';
import 'package:last_fm/domain/search/image_data.dart';

part 'artist_response.g.dart';

@JsonSerializable()
class ArtistResponse {
  ArtistResponse({
    required this.mbid,
    required this.image,
    required this.url,
    required this.name,
    required this.bio,
  });

  factory ArtistResponse.fromJson(Map<String, dynamic> json) =>
      _$ArtistResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistResponseToJson(this);

  final String name;
  final String mbid;
  final String url;
  final List<ImageData> image;
  final Wiki bio;
}
