// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_map.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DynamicMapState _$DynamicMapStateFromJson(Map<String, dynamic> json) {
  return DynamicMapState(
      entities: (json['entities'] as Map<String, dynamic>)?.map((k, e) =>
          MapEntry(
              k,
              e == null
                  ? null
                  : CameraPosition.fromJson(e as Map<String, dynamic>))));
}

Map<String, dynamic> _$DynamicMapStateToJson(DynamicMapState instance) =>
    <String, dynamic>{'entities': instance.entities};

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
