// Copyright 2023 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
