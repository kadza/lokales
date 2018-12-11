// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_map.action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimateMapAction _$AnimateMapActionFromJson(Map<String, dynamic> json) {
  return AnimateMapAction(
      clientId: json['clientId'] as String,
      cameraPosition: json['cameraPosition'] == null
          ? null
          : CameraPosition.fromJson(
              json['cameraPosition'] as Map<String, dynamic>));
}

Map<String, dynamic> _$AnimateMapActionToJson(AnimateMapAction instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'cameraPosition': instance.cameraPosition
    };

InitializeMapAction _$InitializeMapActionFromJson(Map<String, dynamic> json) {
  return InitializeMapAction(
      clientId: json['clientId'] as String,
      cameraPosition: json['cameraPosition'] == null
          ? null
          : CameraPosition.fromJson(
              json['cameraPosition'] as Map<String, dynamic>));
}

Map<String, dynamic> _$InitializeMapActionToJson(
        InitializeMapAction instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'cameraPosition': instance.cameraPosition
    };

DisposeMapAction _$DisposeMapActionFromJson(Map<String, dynamic> json) {
  return DisposeMapAction(clientId: json['clientId'] as String);
}

Map<String, dynamic> _$DisposeMapActionToJson(DisposeMapAction instance) =>
    <String, dynamic>{'clientId': instance.clientId};
