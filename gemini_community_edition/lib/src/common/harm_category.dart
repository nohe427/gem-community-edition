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

import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: "value")
enum HarmCategory {
  /// A new and not yet supported value.
  unknown("UNKNOWN"),

  /// Harassment content.
  harassment("HARM_CATEGORY_HARASSMENT"),

  /// Hate speech and content.
  hateSpeech("HARM_CATEGORY_HATE_SPEECH"),

  /// Sexually explicit content.
  sexuallyExplicit("HARM_CATEGORY_SEXUALLY_EXPLICIT"),

  /// Dangerous content.
  dangerousContent("HARM_CATEGORY_DANGEROUS_CONTENT");

  final String value;
  const HarmCategory(this.value);
}
