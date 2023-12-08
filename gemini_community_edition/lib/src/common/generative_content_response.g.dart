// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generative_content_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerateContentReponse _$GenerateContentReponseFromJson(
        Map<String, dynamic> json) =>
    GenerateContentReponse(
      (json['candidates'] as List<dynamic>)
          .map((e) => Candidate.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['promptFeedback'] == null
          ? null
          : PromptFeedback.fromJson(
              json['promptFeedback'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerateContentReponseToJson(
        GenerateContentReponse instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
      'promptFeedback': instance.promptFeedback,
    };
