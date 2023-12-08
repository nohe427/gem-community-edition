import 'package:json_annotation/json_annotation.dart';

part 'part.g.dart';

@JsonSerializable(createFactory: false)
class Part {
  Part() {}

  Map<String, dynamic> toJson() {
    if (this is TextPart) {
      return _$TextPartToJson(this as TextPart);
    }
    if (this is Base64ImagePart) {
      return (this as Base64ImagePart).toJson();
    }
    return Map<String, dynamic>();
  }

  factory Part.fromJson(Map<String, dynamic> json) {
    if (json.containsKey("text")) {
      return _$TextPartFromJson(json);
    }
    if (json.containsKey("inlineData")) {
      return _$Base64ImagePartFromJson(json);
    }
    return TextPart("no part found");
  }
}

@JsonSerializable()
class TextPart extends Part {
  @JsonKey(name: "text")
  final String text;
  TextPart(this.text);
}

@JsonSerializable(createToJson: false)
class Base64ImagePart extends Part {
  @JsonKey(name: "mime_type")
  final String mimeType;

  @JsonKey(name: "data")
  final String base64String;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "inlinedData": {"mime_type": mimeType, "data": base64String}
    };
  }

  Base64ImagePart(this.mimeType, this.base64String);
}
