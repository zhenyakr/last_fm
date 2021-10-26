import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/artist_details/artist_response.dart';

part 'artist_form.g.dart';

@JsonSerializable()
class ArtistForm {
  ArtistForm({
    required this.artist,
  });

  factory ArtistForm.fromJson(Map<String, dynamic> json) =>
      _$ArtistFormFromJson(json);

  Map<String, dynamic> toJson() => _$ArtistFormToJson(this);

  final ArtistResponse artist;
}
