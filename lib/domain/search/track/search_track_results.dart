import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/search/query_data.dart';
import 'package:last_fm/domain/search/track/track_matches.dart';

part 'search_track_results.g.dart';

@JsonSerializable()
class SearchTrackResults {
  SearchTrackResults({
    required this.queryData,
    required this.totalResults,
    required this.startIndex,
    required this.itemsPerPage,
    required this.trackMatches,
  });

  factory SearchTrackResults.fromJson(Map<String, dynamic> json) =>
      _$SearchTrackResultsFromJson(json);

  Map<String, dynamic> toJson() => _$SearchTrackResultsToJson(this);

  @JsonKey(name: 'opensearch:Query')
  final QueryData queryData;
  @JsonKey(name: 'opensearch:totalResults')
  final String totalResults;
  @JsonKey(name: 'opensearch:startIndex')
  final String startIndex;
  @JsonKey(name: 'opensearch:itemsPerPage')
  final String itemsPerPage;
  @JsonKey(name: 'trackmatches')
  final TrackMatches trackMatches;
}
