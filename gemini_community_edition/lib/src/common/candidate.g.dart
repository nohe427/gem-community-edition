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
  FinishReason.UNKNOWN: 'UNKNOWN',
  FinishReason.UNSPECIFIED: 'FINISH_REASON_UNSPECIFIED',
  FinishReason.STOP: 'STOP',
  FinishReason.MAX_TOKENS: 'MAX_TOKENS',
  FinishReason.SAFETY: 'SAFETY',
  FinishReason.RECITATION: 'RECITATION',
  FinishReason.OTHER: 'OTHER',
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
  HarmCategory.UNKNOWN: 'UNKNOWN',
  HarmCategory.HARASSMENT: 'HARM_CATEGORY_HARASSMENT',
  HarmCategory.HATE_SPEECH: 'HARM_CATEGORY_HATE_SPEECH',
  HarmCategory.SEXUALLY_EXPLICIT: 'HARM_CATEGORY_SEXUALLY_EXPLICIT',
  HarmCategory.DANGEROUS_CONTENT: 'HARM_CATEGORY_DANGEROUS_CONTENT',
};

const _$HarmProbabilityEnumMap = {
  HarmProbability.UNKNOWN: 'UNKNOWN',
  HarmProbability.UNSPECIFIED: 'HARM_PROBABILITY_UNSPECIFIED',
  HarmProbability.NEGLIGIBLE: 'NEGLIGIBLE',
  HarmProbability.LOW: 'LOW',
  HarmProbability.MEDIUM: 'MEDIUM',
  HarmProbability.HIGH: 'HIGH',
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
