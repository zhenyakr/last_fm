import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/search/artist/artist_matches.dart';
import 'package:last_fm/domain/search/query_data.dart';

part 'search_artist_results.g.dart';

@JsonSerializable()
class SearchArtistResults {
  SearchArtistResults({
    required this.queryData,
    required this.totalResults,
    required this.startIndex,
    required this.itemsPerPage,
    required this.artistMatches,
  });

  factory SearchArtistResults.fromJson(Map<String, dynamic> json) =>
      _$SearchArtistResultsFromJson(json);

  Map<String, dynamic> toJson() => _$SearchArtistResultsToJson(this);

  @JsonKey(name: 'opensearch:Query')
  final QueryData queryData;
  @JsonKey(name: 'opensearch:totalResults')
  final String totalResults;
  @JsonKey(name: 'opensearch:startIndex')
  final String startIndex;
  @JsonKey(name: 'opensearch:itemsPerPage')
  final String itemsPerPage;
  @JsonKey(name: 'artistmatches')
  final ArtistMatches artistMatches;
}
