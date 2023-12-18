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
enum HarmProbability {
  /// A new and not yet supported value.
  unknown("UNKNOWN"),

  /// Probability for harm is unspecified.
  unspecified("HARM_PROBABILITY_UNSPECIFIED"),

  /// Probability for harm is negligible.
  negligible("NEGLIGIBLE"),

  /// Probability for harm is low.
  low("LOW"),

  /// Probability for harm is medium.
  medium("MEDIUM"),

  /// Probability for harm is high.
  high("HIGH");

  final String value;
  const HarmProbability(this.value);
}
