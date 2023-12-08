import 'package:gemini_community_edition/src/common/block_threshold.dart';
import 'package:gemini_community_edition/src/common/harm_category.dart';
import 'package:json_annotation/json_annotation.dart';

part 'safety_setting.g.dart';

@JsonSerializable()
class SafetySetting {
  final HarmCategory harmCategory;
  final BlockThreshold threshold;

  SafetySetting(this.harmCategory, this.threshold);

  factory SafetySetting.fromJson(Map<String, dynamic> json) =>
      _$SafetySettingFromJson(json);

  Map<String, dynamic> toJson() => _$SafetySettingToJson(this);
}
