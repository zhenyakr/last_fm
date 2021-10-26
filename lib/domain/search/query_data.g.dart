// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryData _$QueryDataFromJson(Map<String, dynamic> json) {
  return QueryData(
    text: json['#text'] as String,
    role: json['role'] as String,
    startPage: json['startPage'] as String,
  );
}

Map<String, dynamic> _$QueryDataToJson(QueryData instance) => <String, dynamic>{
      '#text': instance.text,
      'role': instance.role,
      'startPage': instance.startPage,
    };
