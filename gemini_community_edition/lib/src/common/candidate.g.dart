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

part of 'candidate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Candidate _$CandidateFromJson(Map<String, dynamic> json) => Candidate(
      Content.fromJson(json['content'] as Map<String, dynamic>),
      (json['safetyRatings'] as List<dynamic>?)
          ?.map((e) => SafetyRating.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['citationMetadata'] as List<dynamic>?)
          ?.map((e) => CitationMetadata.fromJson(e as Map<String, dynamic>))
          .toList(),
      $enumDecodeNullable(_$FinishReasonEnumMap, json['finishReason']),
    );

Map<String, dynamic> _$CandidateToJson(Candidate instance) => <String, dynamic>{
      'content': instance.content,
      'safetyRatings': instance.safetyRatings,
      'citationMetadata': instance.citationMetadata,
      'finishReason': _$FinishReasonEnumMap[instance.finishReason],
    };

const _$FinishReasonEnumMap = {
  FinishReason.unknown: 'UNKNOWN',
  FinishReason.unspecified: 'FINISH_REASON_UNSPECIFIED',
  FinishReason.stop: 'STOP',
  FinishReason.maxTokens: 'MAX_TOKENS',
  FinishReason.safety: 'SAFETY',
  FinishReason.recitation: 'RECITATION',
  FinishReason.other: 'OTHER',
};

SafetyRating _$SafetyRatingFromJson(Map<String, dynamic> json) => SafetyRating(
      $enumDecode(_$HarmCategoryEnumMap, json['category']),
      $enumDecode(_$HarmProbabilityEnumMap, json['probability']),
      json['blocked'] as bool?,
    );

Map<String, dynamic> _$SafetyRatingToJson(SafetyRating instance) =>
    <String, dynamic>{
      'category': _$HarmCategoryEnumMap[instance.category]!,
      'probability': _$HarmProbabilityEnumMap[instance.probability]!,
      'blocked': instance.blocked,
    };

const _$HarmCategoryEnumMap = {
  HarmCategory.unknown: 'UNKNOWN',
  HarmCategory.harassment: 'HARM_CATEGORY_HARASSMENT',
  HarmCategory.hateSpeech: 'HARM_CATEGORY_HATE_SPEECH',
  HarmCategory.sexuallyExplicit: 'HARM_CATEGORY_SEXUALLY_EXPLICIT',
  HarmCategory.dangerousContent: 'HARM_CATEGORY_DANGEROUS_CONTENT',
};

const _$HarmProbabilityEnumMap = {
  HarmProbability.unknown: 'UNKNOWN',
  HarmProbability.unspecified: 'HARM_PROBABILITY_UNSPECIFIED',
  HarmProbability.negligible: 'NEGLIGIBLE',
  HarmProbability.low: 'LOW',
  HarmProbability.medium: 'MEDIUM',
  HarmProbability.high: 'HIGH',
};

CitationMetadata _$CitationMetadataFromJson(Map<String, dynamic> json) =>
    CitationMetadata(
      json['startIndex'] as int,
      json['endIndex'] as int,
      json['url'] as String,
      json['title'] as String,
      json['license'] as String,
      json['publicationDate'] as String,
    );

Map<String, dynamic> _$CitationMetadataToJson(CitationMetadata instance) =>
    <String, dynamic>{
      'startIndex': instance.startIndex,
      'endIndex': instance.endIndex,
      'url': instance.url,
      'title': instance.title,
      'license': instance.license,
      'publicationDate': instance.publicationDate,
    };
