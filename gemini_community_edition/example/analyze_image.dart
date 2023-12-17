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

import 'dart:convert';

import 'package:gemini_community_edition/src/common/content.dart';
import 'package:gemini_community_edition/src/common/generative_content_response.dart';
import 'package:gemini_community_edition/src/common/model_name.dart';
import 'package:gemini_community_edition/src/common/part.dart';
import 'package:gemini_community_edition/src/generative_model.dart';
import 'dart:io';

final apiKey = File("example/API_KEY").readAsStringSync();

void main(List<String> arguments) async {
  // Example invocation: dart run example/analyze_image.dart "What is in this picture?" example/xmas_tree.jpeg "Is it real?" "Is it good?"
  proVisionModel(arguments.isNotEmpty
      ? arguments
      : ["What is in this picture?", "example/duck.png"]);
}

Future proVisionModel(List<String> args) async {
  final parts = parseArgumentsIntoParts(args);
  final model = GenerativeModel(ModelName.geminiProVision, apiKey);
  final response = await model.generateContent(Content("user", parts));
  printResponse(response);
}

void proVisionModelStreaming(List<String> args) {
  final parts = parseArgumentsIntoParts(args);
  final model = GenerativeModel(ModelName.geminiProVision, apiKey);
  model.generateContentStream(Content("user", parts)).listen((response) {
    printResponse(response);
  });
}

void printResponse(GenerateContentReponse response) {
  final candidates = response.candidates;
  if (candidates != null) {
    for (var candidate in candidates) {
      print(candidate.content.parts.length);
      for (var part in candidate.content.parts) {
        if (part is TextPart) {
          print(part.text);
        }
      }
    }
  } else {
    print("Got no candidate answers");
  }
}

List<Part> parseArgumentsIntoParts(List<String> args) {
  final parts = args.map((arg) {
    final file = File(arg);
    if (File(arg).existsSync()) {
      final base64String = base64Encode(file.readAsBytesSync());
      print(arg.substring(arg.lastIndexOf(".")));
      final mimeType = switch (arg.substring(arg.lastIndexOf("."))) {
        ".png" => "image/png",
        ".jpg" => "image/jpeg",
        ".jpeg" => "image/jpeg",
        String() => throw "Unhandled file type: $arg",
      };
      print('Loaded $arg as a $mimeType part');
      return Base64ImagePart(mimeType, base64String);
    } else {
      return TextPart(arg);
    }
  });
  return parts.toList();
}
