import 'package:gemini_community_edition/src/common/candidate.dart';
import 'package:gemini_community_edition/src/common/content.dart';
import 'package:gemini_community_edition/src/common/model_name.dart';
import 'package:gemini_community_edition/src/common/part.dart';
import 'package:gemini_community_edition/src/generative_model.dart';
import 'dart:io';

final API_KEY = File("example/API_KEY").readAsStringSync();

void main() async {
  print("First, we'll generate a story with a non-streaming generative model...");
  await basicGenerativeModel();
  print("Next, we'll use the same prompt with a streaming model...");
  basicStreamModel();
}

Future basicGenerativeModel() async {
  final model = GenerativeModel(ModelName.geminiPro, API_KEY);
  final value = await model
      .generateContent(Content("user",
          [TextPart("Tell me a story that is at least 1000 words long")]));
  for (var candidate in value.candidates!) {
    print(candidate.content.parts.length);
    for (var part in candidate.content.parts) {
      if (part is TextPart) {
        print(part.text);
      }
    }
  }
}

void basicStreamModel() {
  final model = GenerativeModel(ModelName.geminiPro, API_KEY);
  model
      .generateContentStream(Content("user",
          [TextPart("Tell me a story that is at least 1000 words long")]))
      .listen((value) {
    for (var candidate in value.candidates!) {
      for (var part in candidate.content.parts) {
        if (part is TextPart) {
          stdout.write(part.text);
        }
      }
    }
  });
}
