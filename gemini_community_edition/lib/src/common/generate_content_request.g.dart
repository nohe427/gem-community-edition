// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_content_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Request _$RequestFromJson(Map<String, dynamic> json) => Request();

Map<String, dynamic> _$RequestToJson(Request instance) => <String, dynamic>{};

GenerateContentRequest _$GenerateContentRequestFromJson(
        Map<String, dynamic> json) =>
    GenerateContentRequest(
      json['model'] as String,
      (json['contents'] as List<dynamic>)
          .map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['safetySettings'] as List<dynamic>?)
          ?.map((e) => SafetySetting.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['generationConfig'] as List<dynamic>?)
          ?.map((e) => GenerationConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenerateContentRequestToJson(
        GenerateContentRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'contents': instance.contents,
      'safetySettings': instance.safetySettings,
      'generationConfig': instance.generationConfig,
    };
