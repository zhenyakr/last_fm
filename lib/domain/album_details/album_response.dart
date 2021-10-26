import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/album_details/wiki.dart';
import 'package:last_fm/domain/search/image_data.dart';

part 'album_response.g.dart';

@JsonSerializable()
class AlbumResponse {
  AlbumResponse({
    required this.artist,
    required this.image,
    required this.name,
    required this.listeners,
    this.wiki,
  });

  factory AlbumResponse.fromJson(Map<String, dynamic> json) =>
      _$AlbumResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumResponseToJson(this);

  final String artist;
  final List<ImageData> image;
  final String name;
  final String listeners;
  final Wiki? wiki;
}
