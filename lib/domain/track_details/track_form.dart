import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/track_details/track_response.dart';

part 'track_form.g.dart';

@JsonSerializable()
class TrackForm {
  TrackForm({
    required this.track,
  });

  factory TrackForm.fromJson(Map<String, dynamic> json) =>
      _$TrackFormFromJson(json);

  Map<String, dynamic> toJson() => _$TrackFormToJson(this);

  final TrackResponse track;
}
