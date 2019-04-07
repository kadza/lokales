// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_map.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DynamicMapState _$DynamicMapStateFromJson(Map<String, dynamic> json) {
  return DynamicMapState(
      entities: (json['entities'] as Map<String, dynamic>)?.map(
    (k, e) => MapEntry(
        k,
        e == null
            ? null
            : DynamicMapStateEntity.fromJson(e as Map<String, dynamic>)),
  ));
}

Map<String, dynamic> _$DynamicMapStateToJson(DynamicMapState instance) =>
    <String, dynamic>{'entities': instance.entities};

DynamicMapStateEntity _$DynamicMapStateEntityFromJson(
    Map<String, dynamic> json) {
  return DynamicMapStateEntity(
      cameraPosition: json['cameraPosition'] == null
          ? null
          : CameraPosition.fromJson(
              json['cameraPosition'] as Map<String, dynamic>),
      isCameraPositionFromMap: json['isCameraPositionFromMap'] as bool,
      markers: (json['markers'] as List)
          ?.map((e) =>
              e == null ? null : Marker.fromJson(e as Map<String, dynamic>))
          ?.toSet(),
      areGesturesEnabled: json['areGesturesEnabled'] as bool);
}

Map<String, dynamic> _$DynamicMapStateEntityToJson(
        DynamicMapStateEntity instance) =>
    <String, dynamic>{
      'cameraPosition': instance.cameraPosition,
      'isCameraPositionFromMap': instance.isCameraPositionFromMap,
      'markers': instance.markers?.toList(),
      'areGesturesEnabled': instance.areGesturesEnabled
    };

DynamicMapStateContainer _$DynamicMapStateContainerFromJson(
    Map<String, dynamic> json) {
  return DynamicMapStateContainer(
      dynamicMapState: json['dynamicMapState'] == null
          ? null
          : DynamicMapState.fromJson(
              json['dynamicMapState'] as Map<String, dynamic>));
}

Map<String, dynamic> _$DynamicMapStateContainerToJson(
        DynamicMapStateContainer instance) =>
    <String, dynamic>{'dynamicMapState': instance.dynamicMapState};
