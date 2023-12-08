import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: "value")
enum HarmProbability {
  /** A new and not yet supported value. */
  UNKNOWN("UNKNOWN"),

  /** Probability for harm is unspecified. */
  UNSPECIFIED("HARM_PROBABILITY_UNSPECIFIED"),

  /** Probability for harm is negligible. */
  NEGLIGIBLE("NEGLIGIBLE"),

  /** Probability for harm is low. */
  LOW("LOW"),

  /** Probability for harm is medium. */
  MEDIUM("MEDIUM"),

  /** Probability for harm is high. */
  HIGH("HIGH");

  final String value;
  const HarmProbability(this.value);
}
