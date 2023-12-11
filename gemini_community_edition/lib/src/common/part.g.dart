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

part of 'part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$PartToJson(Part instance) => <String, dynamic>{};

TextPart _$TextPartFromJson(Map<String, dynamic> json) => TextPart(
      json['text'] as String,
    );

Map<String, dynamic> _$TextPartToJson(TextPart instance) => <String, dynamic>{
      'text': instance.text,
    };

Base64ImagePart _$Base64ImagePartFromJson(Map<String, dynamic> json) =>
    Base64ImagePart(
      json['mime_type'] as String,
      json['data'] as String,
    );
