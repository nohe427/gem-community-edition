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

part of 'generative_content_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerateContentReponse _$GenerateContentReponseFromJson(
        Map<String, dynamic> json) =>
    GenerateContentReponse(
      (json['candidates'] as List<dynamic>?)
          ?.map((e) => Candidate.fromJson(e as Map<String, dynamic>))
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
