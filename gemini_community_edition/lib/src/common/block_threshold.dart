import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: "value")
enum BlockThreshold {
  unspecified("HARM_BLOCK_THRESHOLD_UNSPECIFIED"),
  lowAndAbove("LOW_AND_ABOVE"),
  mediumAndAbove("MEDIUM_AND_ABOVE"),
  onlyHigh("ONLY_HIGH"),
  none("NONE");

  final String value;
  const BlockThreshold(this.value);
}
