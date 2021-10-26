// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumForm _$AlbumFormFromJson(Map<String, dynamic> json) {
  return AlbumForm(
    album: AlbumResponse.fromJson(json['album'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AlbumFormToJson(AlbumForm instance) => <String, dynamic>{
      'album': instance.album,
    };
