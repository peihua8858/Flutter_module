import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'BusinessItem.freezed.dart';

part 'BusinessItem.g.dart';

@freezed
abstract class BusinessItem with _$BusinessItem {
  const factory BusinessItem({
    String? ruleId,
    required String title,
    required String imageUrl,
  }) = _BusinessItem;

  factory BusinessItem.fromJson(Map<String, dynamic> json) =>
      _$BusinessItemFromJson(json);
}
