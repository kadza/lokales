import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_model.g.dart';

enum MediaType{
  Image,
  Video,
}

@immutable
@JsonSerializable()
class Media {
  final MediaType type;
  final Uri uri;

  Media({
    @required this.type, 
    @required this.uri,
  });
  
  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);
}