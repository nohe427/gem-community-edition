import 'package:json_annotation/json_annotation.dart';

import 'candidate.dart';
import 'prompt_feedback.dart';

part 'generative_content_response.g.dart';

@JsonSerializable()
class GenerateContentReponse {
  final List<Candidate>? candidates;
  final PromptFeedback? promptFeedback;

  GenerateContentReponse(this.candidates, [this.promptFeedback]);

  factory GenerateContentReponse.fromJson(Map<String, dynamic> json) =>
      _$GenerateContentReponseFromJson(json);

  Map<String, dynamic> toJson() => _$GenerateContentReponseToJson(this);
}
