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
      "inline_data": {"mime_type": mimeType, "data": base64String}
    };
  }

  Base64ImagePart(this.mimeType, this.base64String);
}
