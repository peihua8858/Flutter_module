// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BusinessItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessItem _$BusinessItemFromJson(Map<String, dynamic> json) => BusinessItem(
      json['ruleId'] as String?,
      json['title'] as String,
      json['imageUrl'] as String,
    );

Map<String, dynamic> _$BusinessItemToJson(BusinessItem instance) =>
    <String, dynamic>{
      'ruleId': instance.ruleId,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
    };
