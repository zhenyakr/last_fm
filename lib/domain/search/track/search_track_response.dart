import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/search/track/search_track_results.dart';

part 'search_track_response.g.dart';

@JsonSerializable()
class SearchTrackResponse {
  SearchTrackResponse({
    required this.results,
  });

  factory SearchTrackResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchTrackResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchTrackResponseToJson(this);

  final SearchTrackResults results;
}
