import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/search/artist/search_artist_results.dart';

part 'search_artist_response.g.dart';

@JsonSerializable()
class SearchArtistResponse {
  SearchArtistResponse({
    required this.results,
  });

  factory SearchArtistResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchArtistResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchArtistResponseToJson(this);

  final SearchArtistResults results;
}
