import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/search/album/search_album_results.dart';

part 'search_album_response.g.dart';

@JsonSerializable()
class SearchAlbumResponse {
  SearchAlbumResponse({
    required this.results,
  });

  factory SearchAlbumResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchAlbumResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchAlbumResponseToJson(this);

  final SearchAlbumResults results;
}
