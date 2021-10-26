import 'package:json_annotation/json_annotation.dart';

part 'image_data.g.dart';

@JsonSerializable()
class ImageData {
  ImageData({
    required this.text,
    required this.size,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) =>
      _$ImageDataFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDataToJson(this);

  @JsonKey(name: '#text')
  final String text;
  final String size;
}
