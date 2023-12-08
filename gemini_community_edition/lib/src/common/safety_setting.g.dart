// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SafetySetting _$SafetySettingFromJson(Map<String, dynamic> json) =>
    SafetySetting(
      $enumDecode(_$HarmCategoryEnumMap, json['harmCategory']),
      $enumDecode(_$BlockThresholdEnumMap, json['threshold']),
    );

Map<String, dynamic> _$SafetySettingToJson(SafetySetting instance) =>
    <String, dynamic>{
      'harmCategory': _$HarmCategoryEnumMap[instance.harmCategory]!,
      'threshold': _$BlockThresholdEnumMap[instance.threshold]!,
    };

const _$HarmCategoryEnumMap = {
  HarmCategory.UNKNOWN: 'UNKNOWN',
  HarmCategory.HARASSMENT: 'HARM_CATEGORY_HARASSMENT',
  HarmCategory.HATE_SPEECH: 'HARM_CATEGORY_HATE_SPEECH',
  HarmCategory.SEXUALLY_EXPLICIT: 'HARM_CATEGORY_SEXUALLY_EXPLICIT',
  HarmCategory.DANGEROUS_CONTENT: 'HARM_CATEGORY_DANGEROUS_CONTENT',
};

const _$BlockThresholdEnumMap = {
  BlockThreshold.unspecified: 'HARM_BLOCK_THRESHOLD_UNSPECIFIED',
  BlockThreshold.lowAndAbove: 'LOW_AND_ABOVE',
  BlockThreshold.mediumAndAbove: 'MEDIUM_AND_ABOVE',
  BlockThreshold.onlyHigh: 'ONLY_HIGH',
  BlockThreshold.none: 'NONE',
};
