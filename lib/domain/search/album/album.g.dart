// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return Album(
    name: json['name'] as String,
    artist: json['artist'] as String,
    url: json['url'] as String,
    image: (json['image'] as List<dynamic>)
        .map((e) => ImageData.fromJson(e as Map<String, dynamic>))
        .toList(),
    streamable: json['streamable'] as String,
    mbid: json['mbid'] as String,
  );
}

Map<String, dynamic> _$AlbumToJson(Album instance) => <String, dynamic>{
      'name': instance.name,
      'artist': instance.artist,
      'url': instance.url,
      'image': instance.image,
      'streamable': instance.streamable,
      'mbid': instance.mbid,
    };
