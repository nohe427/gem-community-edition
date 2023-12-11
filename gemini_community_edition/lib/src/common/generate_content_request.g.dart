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
