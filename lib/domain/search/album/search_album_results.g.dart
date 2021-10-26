// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_album_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchAlbumResults _$SearchAlbumResultsFromJson(Map<String, dynamic> json) {
  return SearchAlbumResults(
    queryData:
        QueryData.fromJson(json['opensearch:Query'] as Map<String, dynamic>),
    totalResults: json['opensearch:totalResults'] as String,
    startIndex: json['opensearch:startIndex'] as String,
    itemsPerPage: json['opensearch:itemsPerPage'] as String,
    albumMatches:
        AlbumMatches.fromJson(json['albummatches'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SearchAlbumResultsToJson(SearchAlbumResults instance) =>
    <String, dynamic>{
      'opensearch:Query': instance.queryData,
      'opensearch:totalResults': instance.totalResults,
      'opensearch:startIndex': instance.startIndex,
      'opensearch:itemsPerPage': instance.itemsPerPage,
      'albummatches': instance.albumMatches,
    };
