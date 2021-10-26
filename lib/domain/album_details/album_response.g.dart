// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumResponse _$AlbumResponseFromJson(Map<String, dynamic> json) {
  return AlbumResponse(
    artist: json['artist'] as String,
    mbid: json['mbid'] as String,
    playcount: json['playcount'] as String,
    image: (json['image'] as List<dynamic>)
        .map((e) => ImageData.fromJson(e as Map<String, dynamic>))
        .toList(),
    url: json['url'] as String,
    name: json['name'] as String,
    listeners: json['listeners'] as String,
    wiki: Wiki.fromJson(json['wiki'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AlbumResponseToJson(AlbumResponse instance) =>
    <String, dynamic>{
      'artist': instance.artist,
      'mbid': instance.mbid,
      'playcount': instance.playcount,
      'image': instance.image,
      'url': instance.url,
      'name': instance.name,
      'listeners': instance.listeners,
      'wiki': instance.wiki,
    };
