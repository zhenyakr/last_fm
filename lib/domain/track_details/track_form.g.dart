// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackForm _$TrackFormFromJson(Map<String, dynamic> json) {
  return TrackForm(
    track: TrackResponse.fromJson(json['track'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TrackFormToJson(TrackForm instance) => <String, dynamic>{
      'track': instance.track,
    };
