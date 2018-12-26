// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_gallery.action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddMediaAction _$AddMediaActionFromJson(Map<String, dynamic> json) {
  return AddMediaAction(
      media: json['media'] == null
          ? null
          : Media.fromJson(json['media'] as Map<String, dynamic>));
}

Map<String, dynamic> _$AddMediaActionToJson(AddMediaAction instance) =>
    <String, dynamic>{'media': instance.media};

ClearMediaAction _$ClearMediaActionFromJson(Map<String, dynamic> json) {
  return ClearMediaAction();
}

Map<String, dynamic> _$ClearMediaActionToJson(ClearMediaAction instance) =>
    <String, dynamic>{};
