// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_album_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchAlbumResponse _$SearchAlbumResponseFromJson(Map<String, dynamic> json) {
  return SearchAlbumResponse(
    results:
        SearchAlbumResults.fromJson(json['results'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SearchAlbumResponseToJson(
        SearchAlbumResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
