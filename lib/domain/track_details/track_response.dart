import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/album_details/wiki.dart';
import 'package:last_fm/domain/track_details/track_album_details.dart';

part 'track_response.g.dart';

@JsonSerializable()
class TrackResponse {
  TrackResponse({
    required this.name,
    required this.url,
    required this.duration,
    required this.album,
    required this.wiki,
    required this.listeners,
  });

  factory TrackResponse.fromJson(Map<String, dynamic> json) =>
      _$TrackResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TrackResponseToJson(this);

  final String name;
  final String url;
  final String duration;
  final String listeners;
  final TrackAlbumDetails? album;
  final Wiki? wiki;
}
