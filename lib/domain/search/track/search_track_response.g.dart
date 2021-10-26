// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_track_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchTrackResponse _$SearchTrackResponseFromJson(Map<String, dynamic> json) {
  return SearchTrackResponse(
    results:
        SearchTrackResults.fromJson(json['results'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SearchTrackResponseToJson(
        SearchTrackResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
