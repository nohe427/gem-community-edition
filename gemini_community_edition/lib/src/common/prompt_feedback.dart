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

import 'package:gemini_community_edition/src/common/blocked_reason.dart';
import 'package:gemini_community_edition/src/common/candidate.dart';
import 'package:json_annotation/json_annotation.dart';

part 'prompt_feedback.g.dart';

@JsonSerializable()
class PromptFeedback {
  final BlockedReason? blockReason;
  final List<SafetyRating>? safetyRating;

  PromptFeedback([this.safetyRating, this.blockReason]);

  factory PromptFeedback.fromJson(Map<String, dynamic> json) =>
      _$PromptFeedbackFromJson(json);

  Map<String, dynamic> toJson() => _$PromptFeedbackToJson(this);
}
//   (
//   val blockReason: BlockedReason,
//   val safetyRatings: List<SafetyRating>,
// ) {}
