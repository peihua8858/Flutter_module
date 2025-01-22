import 'package:json_annotation/json_annotation.dart';
part 'BusinessItem.g.dart';

@JsonSerializable()
class BusinessItem {
  String? ruleId;
  String title;
  String imageUrl;

  BusinessItem(this.ruleId, this.title, this.imageUrl);

  factory BusinessItem.fromJson(Map<String, dynamic> json) =>
      _$BusinessItemFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessItemToJson(this);
}