// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot.action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectSpotAction _$SelectSpotActionFromJson(Map<String, dynamic> json) {
  return SelectSpotAction(spotId: json['spotId'] as String);
}

Map<String, dynamic> _$SelectSpotActionToJson(SelectSpotAction instance) =>
    <String, dynamic>{'spotId': instance.spotId};

ReorderSpotCardAction _$ReorderSpotCardActionFromJson(
    Map<String, dynamic> json) {
  return ReorderSpotCardAction(
      oldIndex: json['oldIndex'] as int, newIndex: json['newIndex'] as int);
}

Map<String, dynamic> _$ReorderSpotCardActionToJson(
        ReorderSpotCardAction instance) =>
    <String, dynamic>{
      'oldIndex': instance.oldIndex,
      'newIndex': instance.newIndex
    };

ToggleSpotCardVisibilityAction _$ToggleSpotCardVisibilityActionFromJson(
    Map<String, dynamic> json) {
  return ToggleSpotCardVisibilityAction(
      spotSettingId:
          _$enumDecodeNullable(_$SpotSettingIdEnumMap, json['spotSettingId']));
}

Map<String, dynamic> _$ToggleSpotCardVisibilityActionToJson(
        ToggleSpotCardVisibilityAction instance) =>
    <String, dynamic>{
      'spotSettingId': _$SpotSettingIdEnumMap[instance.spotSettingId]
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$SpotSettingIdEnumMap = <SpotSettingId, dynamic>{
  SpotSettingId.characteristics: 'characteristics',
  SpotSettingId.description: 'description',
  SpotSettingId.icm: 'icm',
  SpotSettingId.location: 'location',
  SpotSettingId.navigation: 'navigation',
  SpotSettingId.weather: 'weather'
};
