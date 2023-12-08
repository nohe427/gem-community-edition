import 'package:gemini_community_edition/src/common/candidate.dart';
import 'package:gemini_community_edition/src/common/content.dart';
import 'package:gemini_community_edition/src/common/model_name.dart';
import 'package:gemini_community_edition/src/common/part.dart';
import 'package:gemini_community_edition/src/generative_model.dart';
import 'dart:io';

final API_KEY = "";

void main() {
  basicStreamModel();
}

void basicGenerativeModel() {
  final model = GenerativeModel(ModelName.geminiPro, API_KEY);
  model
      .generateContent(Content("user",
          [TextPart("Tell me a story that is at least 1000 words long")]))
      .then((value) {
    value.candidates.forEach((Candidate candidate) {
      print(candidate.content.parts.length);
      candidate.content.parts.forEach((Part part) {
        if (part is TextPart) {
          print(part.text);
        }
      });
    });
  });
}

void basicStreamModel() {
  final model = GenerativeModel(ModelName.geminiPro, API_KEY);
  model
      .generateContentStream(Content("user",
          [TextPart("Tell me a story that is at least 1000 words long")]))
      .listen((value) {
    value.candidates.forEach((Candidate candidate) {
      candidate.content.parts.forEach((Part part) {
        if (part is TextPart) {
          stdout.write(part.text);
        }
      });
    });
  });
}
