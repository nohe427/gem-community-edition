// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$PartToJson(Part instance) => <String, dynamic>{};

TextPart _$TextPartFromJson(Map<String, dynamic> json) => TextPart(
      json['text'] as String,
    );

Map<String, dynamic> _$TextPartToJson(TextPart instance) => <String, dynamic>{
      'text': instance.text,
    };

Base64ImagePart _$Base64ImagePartFromJson(Map<String, dynamic> json) =>
    Base64ImagePart(
      json['mime_type'] as String,
      json['data'] as String,
    );
