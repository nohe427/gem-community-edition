import 'package:gemini_community_edition/src/common/blocked_reason.dart';
import 'package:gemini_community_edition/src/common/candidate.dart';
import 'package:json_annotation/json_annotation.dart';

part 'prompt_feedback.g.dart';

@JsonSerializable()
class PromptFeedback {
  final BlockedReason? blockReason;
  final List<SafetyRating>? safetyRating;

  PromptFeedback([this.safetyRating, this.blockReason]);

  factory PromptFeedback.fromJson(Map<String, dynamic> json) =>
      _$PromptFeedbackFromJson(json);

  Map<String, dynamic> toJson() => _$PromptFeedbackToJson(this);
}
//   (
//   val blockReason: BlockedReason,
//   val safetyRatings: List<SafetyRating>,
// ) {}

