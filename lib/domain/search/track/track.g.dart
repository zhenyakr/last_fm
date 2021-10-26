// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Track _$TrackFromJson(Map<String, dynamic> json) {
  return Track(
    name: json['name'] as String,
    artist: json['artist'] as String,
    listeners: json['listeners'] as String,
    url: json['url'] as String,
    image: (json['image'] as List<dynamic>)
        .map((e) => ImageData.fromJson(e as Map<String, dynamic>))
        .toList(),
    streamable: json['streamable'] as String,
    mbid: json['mbid'] as String,
  );
}

Map<String, dynamic> _$TrackToJson(Track instance) => <String, dynamic>{
      'name': instance.name,
      'artist': instance.artist,
      'url': instance.url,
      'streamable': instance.streamable,
      'listeners': instance.listeners,
      'image': instance.image,
      'mbid': instance.mbid,
    };
