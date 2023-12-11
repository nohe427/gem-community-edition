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

import 'package:gemini_community_edition/src/common/generation_config.dart';
import 'package:gemini_community_edition/src/common/safety_setting.dart';
import 'package:http/http.dart';
import 'package:json_annotation/json_annotation.dart';

import 'content.dart';

part 'generate_content_request.g.dart';

@JsonSerializable()
class Request {
  Request();
  Map<String, dynamic> toJson() {
    if (this is GenerateContentRequest) {
      return _$GenerateContentRequestToJson(this as GenerateContentRequest);
    }
    return Map<String, dynamic>();
  }

  factory Request.fromJson(Map<String, dynamic> json) {
    if (json.containsKey("model")) {
      return _$GenerateContentRequestFromJson(json);
    }
    return Request();
  }
}

@JsonSerializable()
class GenerateContentRequest implements Request {
  final String model;
  final List<Content> contents;
  final List<SafetySetting>? safetySettings;
  final List<GenerationConfig>? generationConfig;

  GenerateContentRequest(this.model, this.contents,
      [this.safetySettings, this.generationConfig]);

  Map<String, dynamic> toJson() => _$GenerateContentRequestToJson(this);
}
