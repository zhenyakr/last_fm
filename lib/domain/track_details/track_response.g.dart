// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackResponse _$TrackResponseFromJson(Map<String, dynamic> json) {
  return TrackResponse(
    name: json['name'] as String,
    url: json['url'] as String,
    duration: json['duration'] as String,
    album: json['album'] == null
        ? null
        : TrackAlbumDetails.fromJson(json['album'] as Map<String, dynamic>),
    wiki: json['wiki'] == null
        ? null
        : Wiki.fromJson(json['wiki'] as Map<String, dynamic>),
    listeners: json['listeners'] as String,
  );
}

Map<String, dynamic> _$TrackResponseToJson(TrackResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'duration': instance.duration,
      'listeners': instance.listeners,
      'album': instance.album,
      'wiki': instance.wiki,
    };
