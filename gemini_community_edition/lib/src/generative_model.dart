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

import 'dart:async';

import 'package:gemini_community_edition/src/api/api_controller.dart';
import 'package:gemini_community_edition/src/common/generate_content_request.dart';
import 'package:gemini_community_edition/src/common/generative_content_response.dart';

import 'common/content.dart';
import 'common/generation_config.dart';
import 'common/model_name.dart';
import 'common/safety_setting.dart';

/// Creates a generative model class for communicating with Gemini
class GenerativeModel {
  final ModelName modelName;
  final String apiKey;
  final GenerationConfig? generationConfig;
  final List<SafetySetting>? safetySettings;
  late final APIController _controller;

  GenerativeModel(this.modelName, this.apiKey,
      [this.generationConfig, this.safetySettings]) {
    _controller = APIController(modelName.value, apiKey);
  }

  Future<GenerateContentReponse> generateContent(Content prompt) {
    var completer = Completer<GenerateContentReponse>();
    try {
      var request = GenerateContentRequest(modelName.value, [prompt]);
      _controller.generateContent(request).then((value) {
        completer.complete(value);
      });
    } catch (err) {
      print("Something went wrong $err");
    }
    return completer.future;
  }

  Stream<GenerateContentReponse> generateContentStream(Content prompt) {
    var request = GenerateContentRequest(modelName.value, [prompt]);
    return _controller.generateContentStream(request);
  }
}
