import 'dart:convert';

import 'package:gemini_community_edition/src/common/content.dart';
import 'package:gemini_community_edition/src/common/model_name.dart';
import 'package:gemini_community_edition/src/common/part.dart';
import 'package:gemini_community_edition/src/generative_model.dart';
import 'dart:io';

final apiKey = File("example/API_KEY").readAsStringSync();

void main() async {
  print("Let's try some basic image recognition. What's in this picture, Gemini?");
  proVisionModelStreaming();
}

Future proVisionModel() async {
  final file = File('example/scones.jpg');
  final bytes = file.readAsBytesSync();
  final base64 = base64Encode(bytes);
  print('Loaded ${bytes.length} bytes and converted into a base64 string of ${base64.length} chars');
  final model = GenerativeModel(ModelName.geminiProVision, apiKey);
  final response = await model.generateContent(Content("user", [
    TextPart("What is in this picture?"),
    Base64ImagePart("image/jpeg", base64)
  ]));
  print(response);
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
  }
  else {
    print("Got no candidate answers");
  }
}

void proVisionModelStreaming() {
  final file = File('example/scones.jpg');
  final bytes = file.readAsBytesSync();
  final base64 = base64Encode(bytes);
  print('Loaded ${bytes.length} bytes and converted into a base64 string of ${base64.length} chars');
  final model = GenerativeModel(ModelName.geminiProVision, apiKey);
  model.generateContentStream(Content("user", [
    TextPart("What is in this picture?"),
    Base64ImagePart("image/jpeg", base64)
  ])).listen((response) {
    print(response);
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
    }
    else {
      print("Got no answers");
    }
  });
}
