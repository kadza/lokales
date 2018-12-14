// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState(
      homeLocationState: json['homeLocationState'] == null
          ? null
          : HomeLocationState.fromJson(
              json['homeLocationState'] as Map<String, dynamic>),
      dynamicMapState: json['dynamicMapState'] == null
          ? null
          : DynamicMapState.fromJson(
              json['dynamicMapState'] as Map<String, dynamic>),
      spotState: json['spotState'] == null
          ? null
          : SpotState.fromJson(json['spotState'] as Map<String, dynamic>));
}

Map<String, dynamic> _$AppStateToJson(AppState instance) => <String, dynamic>{
      'homeLocationState': instance.homeLocationState,
      'dynamicMapState': instance.dynamicMapState,
      'spotState': instance.spotState
    };
