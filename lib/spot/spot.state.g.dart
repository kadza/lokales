// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpotState _$SpotStateFromJson(Map<String, dynamic> json) {
  return SpotState(
      entities: (json['entities'] as Map<String, dynamic>)?.map((k, e) =>
          MapEntry(
              k, e == null ? null : Spot.fromJson(e as Map<String, dynamic>))),
      settings: json['settings'] == null
          ? null
          : SpotSettings.fromJson(json['settings'] as Map<String, dynamic>),
      selectedSpotId: json['selectedSpotId'] as String);
}

Map<String, dynamic> _$SpotStateToJson(SpotState instance) => <String, dynamic>{
      'entities': instance.entities,
      'settings': instance.settings,
      'selectedSpotId': instance.selectedSpotId
    };

SpotStateContainer _$SpotStateContainerFromJson(Map<String, dynamic> json) {
  return SpotStateContainer(
      spotState: json['spotState'] == null
          ? null
          : SpotState.fromJson(json['spotState'] as Map<String, dynamic>));
}

Map<String, dynamic> _$SpotStateContainerToJson(SpotStateContainer instance) =>
    <String, dynamic>{'spotState': instance.spotState};
