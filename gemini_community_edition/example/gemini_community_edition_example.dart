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

import 'package:gemini_community_edition/src/common/content.dart';
import 'package:gemini_community_edition/src/common/model_name.dart';
import 'package:gemini_community_edition/src/common/part.dart';
import 'package:gemini_community_edition/src/generative_model.dart';
import 'dart:io';

final apiKey = File("example/API_KEY").readAsStringSync();

void main() async {
  print(
      "First, we'll generate a story with a non-streaming generative model...");
  await basicGenerativeModel();
  print("Next, we'll use the same prompt with a streaming model...");
  await basicStreamModel();
}

Future basicGenerativeModel() async {
  final model = GenerativeModel(ModelName.geminiPro, apiKey);
  final value = await model.generateContent(Content(
      "user", [TextPart("Tell me a story that is at least 1000 words long")]));
  for (var candidate in value.candidates!) {
    print(candidate.content.parts.length);
    for (var part in candidate.content.parts) {
      if (part is TextPart) {
        print(part.text);
      }
    }
  }
}

Future<void> basicStreamModel() async {
  final model = GenerativeModel(ModelName.geminiPro, apiKey);
  final stream = model.generateContentStream(Content(
      "user", [TextPart("Tell me a story that is at least 1000 words long")]));

  await for (final value in stream) {
    for (var candidate in value.candidates!) {
      for (var part in candidate.content.parts) {
        if (part is TextPart) {
          stdout.write(part.text);
        }
      }
    }
  }
}
