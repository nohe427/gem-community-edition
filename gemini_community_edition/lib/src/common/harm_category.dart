import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: "value")
enum HarmCategory {
  /** A new and not yet supported value. */
  UNKNOWN("UNKNOWN"),

  /** Harassment content. */
  HARASSMENT("HARM_CATEGORY_HARASSMENT"),

  /** Hate speech and content. */
  HATE_SPEECH("HARM_CATEGORY_HATE_SPEECH"),

  /** Sexually explicit content. */
  SEXUALLY_EXPLICIT("HARM_CATEGORY_SEXUALLY_EXPLICIT"),

  /** Dangerous content. */
  DANGEROUS_CONTENT("HARM_CATEGORY_DANGEROUS_CONTENT");

  final String value;
  const HarmCategory(this.value);
}
