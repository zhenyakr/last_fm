// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_artist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchArtistResponse _$SearchArtistResponseFromJson(Map<String, dynamic> json) {
  return SearchArtistResponse(
    results:
        SearchArtistResults.fromJson(json['results'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SearchArtistResponseToJson(
        SearchArtistResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
