// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_album_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackAlbumDetails _$TrackAlbumDetailsFromJson(Map<String, dynamic> json) {
  return TrackAlbumDetails(
    artist: json['artist'] as String,
    title: json['title'] as String,
    mbid: json['mbid'] as String,
    url: json['url'] as String,
    image: (json['image'] as List<dynamic>)
        .map((e) => ImageData.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TrackAlbumDetailsToJson(TrackAlbumDetails instance) =>
    <String, dynamic>{
      'artist': instance.artist,
      'title': instance.title,
      'mbid': instance.mbid,
      'url': instance.url,
      'image': instance.image,
    };
