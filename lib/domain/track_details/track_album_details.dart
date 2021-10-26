import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/search/image_data.dart';

part 'track_album_details.g.dart';

@JsonSerializable()
class TrackAlbumDetails {
  TrackAlbumDetails({
    required this.artist,
    required this.title,
    required this.mbid,
    required this.url,
    required this.image,
  });

  factory TrackAlbumDetails.fromJson(Map<String, dynamic> json) =>
      _$TrackAlbumDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$TrackAlbumDetailsToJson(this);

  final String artist;
  final String title;
  final String mbid;
  final String url;
  final List<ImageData> image;
}
