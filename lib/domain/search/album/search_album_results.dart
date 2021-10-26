import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/search/album/album_matches.dart';
import 'package:last_fm/domain/search/query_data.dart';

part 'search_album_results.g.dart';

@JsonSerializable()
class SearchAlbumResults {
  SearchAlbumResults({
    required this.queryData,
    required this.totalResults,
    required this.startIndex,
    required this.itemsPerPage,
    required this.albumMatches,
  });

  factory SearchAlbumResults.fromJson(Map<String, dynamic> json) =>
      _$SearchAlbumResultsFromJson(json);

  Map<String, dynamic> toJson() => _$SearchAlbumResultsToJson(this);

  @JsonKey(name: 'opensearch:Query')
  final QueryData queryData;
  @JsonKey(name: 'opensearch:totalResults')
  final String totalResults;
  @JsonKey(name: 'opensearch:startIndex')
  final String startIndex;
  @JsonKey(name: 'opensearch:itemsPerPage')
  final String itemsPerPage;
  @JsonKey(name: 'albummatches')
  final AlbumMatches albumMatches;
}
