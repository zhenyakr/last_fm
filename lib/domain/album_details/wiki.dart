import 'package:json_annotation/json_annotation.dart';

part 'wiki.g.dart';

@JsonSerializable()
class Wiki {
  Wiki({
    required this.published,
    required this.summary,
    required this.content,
  });

  factory Wiki.fromJson(Map<String, dynamic> json) => _$WikiFromJson(json);

  Map<String, dynamic> toJson() => _$WikiToJson(this);

  final String published;
  final String summary;
  final String content;
}
