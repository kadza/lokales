// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_map.action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetCameraPositionAction _$SetCameraPositionActionFromJson(
    Map<String, dynamic> json) {
  return SetCameraPositionAction(
      clientId: json['clientId'] as String,
      cameraPosition: json['cameraPosition'] == null
          ? null
          : CameraPosition.fromJson(
              json['cameraPosition'] as Map<String, dynamic>));
}

Map<String, dynamic> _$SetCameraPositionActionToJson(
        SetCameraPositionAction instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'cameraPosition': instance.cameraPosition
    };

DisposeMapAction _$DisposeMapActionFromJson(Map<String, dynamic> json) {
  return DisposeMapAction(clientId: json['clientId'] as String);
}

Map<String, dynamic> _$DisposeMapActionToJson(DisposeMapAction instance) =>
    <String, dynamic>{'clientId': instance.clientId};
