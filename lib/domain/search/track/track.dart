import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/search/image_data.dart';

part 'track.g.dart';

@JsonSerializable()
class Track {
  Track({
    required this.name,
    required this.artist,
    required this.listeners,
    required this.url,
    required this.image,
    required this.streamable,
    required this.mbid,
  });

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);

  Map<String, dynamic> toJson() => _$TrackToJson(this);

  final String name;
  final String artist;
  final String url;
  final String streamable;
  final String listeners;
  final List<ImageData> image;
  final String mbid;
}
