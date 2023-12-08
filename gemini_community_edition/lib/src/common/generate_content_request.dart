import 'package:gemini_community_edition/src/common/generation_config.dart';
import 'package:gemini_community_edition/src/common/safety_setting.dart';
import 'package:http/http.dart';
import 'package:json_annotation/json_annotation.dart';

import 'content.dart';

part 'generate_content_request.g.dart';

@JsonSerializable()
class Request {
  Request();
  Map<String, dynamic> toJson() {
    if (this is GenerateContentRequest) {
      return _$GenerateContentRequestToJson(this as GenerateContentRequest);
    }
    return Map<String, dynamic>();
  }

  factory Request.fromJson(Map<String, dynamic> json) {
    if (json.containsKey("model")) {
      return _$GenerateContentRequestFromJson(json);
    }
    return Request();
  }
}

@JsonSerializable()
class GenerateContentRequest implements Request {
  final String model;
  final List<Content> contents;
  final List<SafetySetting>? safetySettings;
  final List<GenerationConfig>? generationConfig;

  GenerateContentRequest(this.model, this.contents,
      [this.safetySettings, this.generationConfig]);

  Map<String, dynamic> toJson() => _$GenerateContentRequestToJson(this);
}
