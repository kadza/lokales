// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_settings.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpotSettings _$SpotSettingsFromJson(Map<String, dynamic> json) {
  return SpotSettings(
      isIcmVisible: json['isIcmVisible'] as bool,
      isWindDirectionsVisible: json['isWindDirectionsVisible'] as bool,
      isLocationVisible: json['isLocationVisible'] as bool,
      isWindguruVisible: json['isWindguruVisible'] as bool,
      isDescriptionVisible: json['isDescriptionVisible'] as bool);
}

Map<String, dynamic> _$SpotSettingsToJson(SpotSettings instance) =>
    <String, dynamic>{
      'isIcmVisible': instance.isIcmVisible,
      'isWindDirectionsVisible': instance.isWindDirectionsVisible,
      'isLocationVisible': instance.isLocationVisible,
      'isWindguruVisible': instance.isWindguruVisible,
      'isDescriptionVisible': instance.isDescriptionVisible
    };
