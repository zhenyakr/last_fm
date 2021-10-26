import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/search/track/track.dart';

part 'track_matches.g.dart';

@JsonSerializable()
class TrackMatches {
  TrackMatches({
    required this.track,
  });

  factory TrackMatches.fromJson(Map<String, dynamic> json) =>
      _$TrackMatchesFromJson(json);

  Map<String, dynamic> toJson() => _$TrackMatchesToJson(this);

  final List<Track> track;
}
