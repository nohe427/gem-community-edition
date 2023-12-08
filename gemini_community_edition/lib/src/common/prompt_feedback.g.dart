// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prompt_feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromptFeedback _$PromptFeedbackFromJson(Map<String, dynamic> json) =>
    PromptFeedback(
      (json['safetyRating'] as List<dynamic>?)
          ?.map((e) => SafetyRating.fromJson(e as Map<String, dynamic>))
          .toList(),
      $enumDecodeNullable(_$BlockedReasonEnumMap, json['blockReason']),
    );

Map<String, dynamic> _$PromptFeedbackToJson(PromptFeedback instance) =>
    <String, dynamic>{
      'blockReason': _$BlockedReasonEnumMap[instance.blockReason],
      'safetyRating': instance.safetyRating,
    };

const _$BlockedReasonEnumMap = {
  BlockedReason.UNKNOWN: 'UNKNOWN',
  BlockedReason.UNSPECIFIED: 'BLOCKED_REASON_UNSPECIFIED',
  BlockedReason.SAFETY: 'SAFETY',
  BlockedReason.OTHER: 'OTHER',
};
