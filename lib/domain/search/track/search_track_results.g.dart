// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_track_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchTrackResults _$SearchTrackResultsFromJson(Map<String, dynamic> json) {
  return SearchTrackResults(
    queryData:
        QueryData.fromJson(json['opensearch:Query'] as Map<String, dynamic>),
    totalResults: json['opensearch:totalResults'] as String,
    startIndex: json['opensearch:startIndex'] as String,
    itemsPerPage: json['opensearch:itemsPerPage'] as String,
    trackMatches:
        TrackMatches.fromJson(json['trackmatches'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SearchTrackResultsToJson(SearchTrackResults instance) =>
    <String, dynamic>{
      'opensearch:Query': instance.queryData,
      'opensearch:totalResults': instance.totalResults,
      'opensearch:startIndex': instance.startIndex,
      'opensearch:itemsPerPage': instance.itemsPerPage,
      'trackmatches': instance.trackMatches,
    };
