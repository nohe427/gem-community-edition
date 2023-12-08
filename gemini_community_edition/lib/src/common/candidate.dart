import 'package:gemini_community_edition/src/common/content.dart';
import 'package:gemini_community_edition/src/common/harm_category.dart';
import 'package:gemini_community_edition/src/common/harm_probabiltiy.dart';
import 'package:json_annotation/json_annotation.dart';

part 'candidate.g.dart';

@JsonSerializable()
class Candidate {
  final Content content;
  final List<SafetyRating>? safetyRatings;
  final List<CitationMetadata>? citationMetadata;
  final FinishReason? finishReason;

  Candidate(this.content,
      [this.safetyRatings, this.citationMetadata, this.finishReason]);

  factory Candidate.fromJson(Map<String, dynamic> json) =>
      _$CandidateFromJson(json);

  Map<String, dynamic> toJson() => _$CandidateToJson(this);
}

@JsonSerializable()
class SafetyRating {
  final HarmCategory category;
  final HarmProbability probability;
  final bool? blocked;

  SafetyRating(this.category, this.probability, [this.blocked]);

  factory SafetyRating.fromJson(Map<String, dynamic> json) =>
      _$SafetyRatingFromJson(json);

  Map<String, dynamic> toJson() => _$SafetyRatingToJson(this);
}

@JsonSerializable()
class CitationMetadata {
  final int startIndex;
  final int endIndex;
  final String url;
  final String title;
  final String license;
  final String publicationDate;

  CitationMetadata(this.startIndex, this.endIndex, this.url, this.title,
      this.license, this.publicationDate);

  factory CitationMetadata.fromJson(Map<String, dynamic> json) =>
      _$CitationMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$CitationMetadataToJson(this);
}

@JsonEnum(valueField: "value")
enum FinishReason {
  /** A new and not yet supported value. */
  UNKNOWN("UNKNOWN"),

  /** Reason is unspecified. */
  UNSPECIFIED("FINISH_REASON_UNSPECIFIED"),

  /** Model finished successfully and stopped. */
  STOP("STOP"),

  /** Model hit the token limit. */
  MAX_TOKENS("MAX_TOKENS"),

  /** [SafetySetting]s prevented the model from outputting content. */
  SAFETY("SAFETY"),

  /** Model began looping. */
  RECITATION("RECITATION"),

  /** Model stopped for another reason. */
  OTHER("OTHER");

  final String value;
  const FinishReason(this.value);
}
