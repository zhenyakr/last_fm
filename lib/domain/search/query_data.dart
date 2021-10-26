import 'package:json_annotation/json_annotation.dart';

part 'query_data.g.dart';

@JsonSerializable()
class QueryData {
  QueryData({
    required this.text,
    required this.role,
    required this.startPage,
  });

  factory QueryData.fromJson(Map<String, dynamic> json) =>
      _$QueryDataFromJson(json);

  Map<String, dynamic> toJson() => _$QueryDataToJson(this);

  @JsonKey(name: '#text')
  final String text;
  final String role;
  final String startPage;
}
