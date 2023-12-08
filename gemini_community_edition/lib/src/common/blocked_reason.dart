import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: "value")
/** Describes why content was blocked. */
enum BlockedReason {
  /** A new and not yet supported value. */
  UNKNOWN("UNKNOWN"),

  /** Content was blocked for an unspecified reason. */
  UNSPECIFIED("BLOCKED_REASON_UNSPECIFIED"),

  /** Content was blocked for violating provided [SafetySetting]s. */
  SAFETY("SAFETY"),

  /** Content was blocked for another reason. */
  OTHER("OTHER");

  final String value;
  const BlockedReason(this.value);
}
