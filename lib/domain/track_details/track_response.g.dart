// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackResponse _$TrackResponseFromJson(Map<String, dynamic> json) {
  return TrackResponse(
    mbid: json['mbid'] as String,
    name: json['name'] as String,
    url: json['url'] as String,
    duration: json['duration'] as String,
    album: TrackAlbumDetails.fromJson(json['album'] as Map<String, dynamic>),
    wiki: Wiki.fromJson(json['wiki'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TrackResponseToJson(TrackResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mbid': instance.mbid,
      'url': instance.url,
      'duration': instance.duration,
      'album': instance.album,
      'wiki': instance.wiki,
    };
