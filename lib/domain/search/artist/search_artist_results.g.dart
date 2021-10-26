// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_artist_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchArtistResults _$SearchArtistResultsFromJson(Map<String, dynamic> json) {
  return SearchArtistResults(
    queryData:
        QueryData.fromJson(json['opensearch:Query'] as Map<String, dynamic>),
    totalResults: json['opensearch:totalResults'] as String,
    startIndex: json['opensearch:startIndex'] as String,
    itemsPerPage: json['opensearch:itemsPerPage'] as String,
    artistMatches:
        ArtistMatches.fromJson(json['artistmatches'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SearchArtistResultsToJson(
        SearchArtistResults instance) =>
    <String, dynamic>{
      'opensearch:Query': instance.queryData,
      'opensearch:totalResults': instance.totalResults,
      'opensearch:startIndex': instance.startIndex,
      'opensearch:itemsPerPage': instance.itemsPerPage,
      'artistmatches': instance.artistMatches,
    };
