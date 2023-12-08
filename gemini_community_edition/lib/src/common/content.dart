import 'package:gemini_community_edition/src/common/part.dart';
import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

@JsonSerializable()
class Content {
  final String role;
  final List<Part> parts;

  Content(this.role, this.parts);

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);
}
