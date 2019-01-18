// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_settings.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpotSetting _$SpotSettingFromJson(Map<String, dynamic> json) {
  return SpotSetting(
      isVisible: json['isVisible'] as bool,
      id: _$enumDecodeNullable(_$SpotSettingIdEnumMap, json['id']));
}

Map<String, dynamic> _$SpotSettingToJson(SpotSetting instance) =>
    <String, dynamic>{
      'isVisible': instance.isVisible,
      'id': _$SpotSettingIdEnumMap[instance.id]
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
