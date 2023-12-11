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

part 'generation_config.g.dart';

@JsonSerializable()
class GenerationConfig {
  final double? temperature;
  @JsonKey(name: "top_k")
  final int? topK;
  @JsonKey(name: "top_p")
  final double? topP;
  @JsonKey(name: "candidate_count")
  final int? candidateCount;
  @JsonKey(name: "max_output_tokens")
  final int? maxOutputTokens;
  @JsonKey(name: "stop_sequences")
  final List<String>? stopSequences;

  GenerationConfig(
      [this.temperature,
      this.topK,
      this.topP,
      this.candidateCount,
      this.maxOutputTokens,
      this.stopSequences]);

  factory GenerationConfig.fromJson(Map<String, dynamic> json) =>
      _$GenerationConfigFromJson(json);

  Map<String, dynamic> toJson() => _$GenerationConfigToJson(this);
}
