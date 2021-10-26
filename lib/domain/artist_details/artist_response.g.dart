// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistResponse _$ArtistResponseFromJson(Map<String, dynamic> json) {
  return ArtistResponse(
    image: (json['image'] as List<dynamic>)
        .map((e) => ImageData.fromJson(e as Map<String, dynamic>))
        .toList(),
    url: json['url'] as String,
    name: json['name'] as String,
    bio: json['bio'] == null
        ? null
        : Wiki.fromJson(json['bio'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArtistResponseToJson(ArtistResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'image': instance.image,
      'bio': instance.bio,
    };
