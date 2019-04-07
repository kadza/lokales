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
              json['cameraPosition'] as Map<String, dynamic>),
      isCameraPositionFromMap: json['isCameraPositionFromMap'] as bool);
}

Map<String, dynamic> _$SetCameraPositionActionToJson(
        SetCameraPositionAction instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'cameraPosition': instance.cameraPosition,
      'isCameraPositionFromMap': instance.isCameraPositionFromMap
    };
