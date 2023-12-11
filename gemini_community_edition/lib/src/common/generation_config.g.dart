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

part of 'generation_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerationConfig _$GenerationConfigFromJson(Map<String, dynamic> json) =>
    GenerationConfig(
      (json['temperature'] as num?)?.toDouble(),
      json['top_k'] as int?,
      (json['top_p'] as num?)?.toDouble(),
      json['candidate_count'] as int?,
      json['max_output_tokens'] as int?,
      (json['stop_sequences'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$GenerationConfigToJson(GenerationConfig instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'top_k': instance.topK,
      'top_p': instance.topP,
      'candidate_count': instance.candidateCount,
      'max_output_tokens': instance.maxOutputTokens,
      'stop_sequences': instance.stopSequences,
    };
