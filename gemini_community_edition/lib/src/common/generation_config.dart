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
