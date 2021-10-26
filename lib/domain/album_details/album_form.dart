import 'package:json_annotation/json_annotation.dart';
import 'package:last_fm/domain/album_details/album_response.dart';

part 'album_form.g.dart';

@JsonSerializable()
class AlbumForm {
  AlbumForm({
    required this.album,
  });

  factory AlbumForm.fromJson(Map<String, dynamic> json) =>
      _$AlbumFormFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumFormToJson(this);

  final AlbumResponse album;
}
