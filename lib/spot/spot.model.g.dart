// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpotCharacteristics _$SpotCharacteristicsFromJson(Map<String, dynamic> json) {
  return SpotCharacteristics(
      name: json['name'] as String,
      isWaterDeep: json['isWaterDeep'] as bool,
      windDirections: (json['windDirections'] as List)
          ?.map((e) => _$enumDecodeNullable(_$WindDirectionEnumMap, e)),
      isWaterFlat: json['isWaterFlat'] as bool);
}

Map<String, dynamic> _$SpotCharacteristicsToJson(
        SpotCharacteristics instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isWaterDeep': instance.isWaterDeep,
      'windDirections': instance.windDirections
          ?.map((e) => _$WindDirectionEnumMap[e])
          ?.toList(),
      'isWaterFlat': instance.isWaterFlat
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

const _$WindDirectionEnumMap = <WindDirection, dynamic>{
  WindDirection.N: 'N',
  WindDirection.NE: 'NE',
  WindDirection.E: 'E',
  WindDirection.SE: 'SE',
  WindDirection.S: 'S',
  WindDirection.SW: 'SW',
  WindDirection.W: 'W',
  WindDirection.NW: 'NW'
};

Spot _$SpotFromJson(Map<String, dynamic> json) {
  return Spot(
      id: json['id'] as String,
      location: json['location'] == null
          ? null
          : CameraPosition.fromJson(json['location'] as Map<String, dynamic>),
      name: json['name'] as String,
      shortName: json['shortName'] as String,
      titleImagePath: json['titleImagePath'] as String,
      description: json['description'] as String,
      icmImageLocation: json['icmImageLocation'] == null
          ? null
          : RowColumn.fromJson(
              json['icmImageLocation'] as Map<String, dynamic>),
      characteristics: (json['characteristics'] as List)
          ?.map((e) => e == null
              ? null
              : SpotCharacteristics.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      windguruUrl: json['windguruUrl'] == null
          ? null
          : Uri.parse(json['windguruUrl'] as String),
      windyUrl: json['windyUrl'] == null
          ? null
          : Uri.parse(json['windyUrl'] as String));
}

Map<String, dynamic> _$SpotToJson(Spot instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortName': instance.shortName,
      'titleImagePath': instance.titleImagePath,
      'characteristics': instance.characteristics,
      'location': instance.location,
      'icmImageLocation': instance.icmImageLocation,
      'windguruUrl': instance.windguruUrl?.toString(),
      'windyUrl': instance.windyUrl?.toString(),
      'description': instance.description
    };
