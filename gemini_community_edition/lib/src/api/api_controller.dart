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
import 'dart:convert';

import 'package:gemini_community_edition/src/common/generate_content_request.dart';
import 'package:gemini_community_edition/src/common/generative_content_response.dart';
import 'package:http/http.dart' as http;

class APIController {
  final String _key;
  final String _model;
  late http.Client _client;

  late Map<String, String> _headers;

  final String _domain = "https://generativelanguage.googleapis.com/v1/models";

  APIController(this._model, this._key) {
    _client = http.Client();
    _headers = <String, String>{
      "Content-Type": "application/json",
      "x-goog-api-key": _key
    };
  }

  Future<GenerateContentReponse> generateContent(
      GenerateContentRequest request) {
    final completer = Completer<GenerateContentReponse>();
    _client
        .post(Uri.parse("$_domain/$_model:generateContent"),
            headers: _headers, body: jsonEncode(request.toJson()))
        .then((value) {
      GenerateContentReponse response =
          GenerateContentReponse.fromJson(jsonDecode(value.body));
      completer.complete(response);
    });
    return completer.future;
  }

// for some silly reason, streams are coming in one chunk rather than multiple
// TODO(@nohe427): Figure out why event.body returns all body objects at once
// Rather than one at a time.
  Stream<GenerateContentReponse> generateContentStream(
      GenerateContentRequest request) {
    return _client
        .post(Uri.parse("$_domain/$_model:streamGenerateContent?alt=sse"),
            headers: _headers, body: jsonEncode(request.toJson()))
        .asStream()
        .map((event) => utf8.decode(event.bodyBytes))
        .transform(LineSplitter())
        .map((event) => dropPrefix(event))
        .map((event) {
      if (event.isNotEmpty) {
        return GenerateContentReponse.fromJson(jsonDecode(event));
      }
      return GenerateContentReponse([]);
    });
  }

  final String _ssePrefix = "data:";
  String dropPrefix(String body) {
    if (body.startsWith(_ssePrefix)) {
      String value = body.substring(_ssePrefix.length, body.length);
      return value;
    }
    return body;
  }
}
