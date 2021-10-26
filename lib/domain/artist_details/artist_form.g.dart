// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistForm _$ArtistFormFromJson(Map<String, dynamic> json) {
  return ArtistForm(
    artist: ArtistResponse.fromJson(json['artist'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArtistFormToJson(ArtistForm instance) =>
    <String, dynamic>{
      'artist': instance.artist,
    };
