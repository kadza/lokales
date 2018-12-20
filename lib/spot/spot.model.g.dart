// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      validWindDirections: (json['validWindDirections'] as List)
          ?.map((e) => e as String)
          ?.toList(),
      windguruUrl: json['windguruUrl'] == null
          ? null
          : Uri.parse(json['windguruUrl'] as String));
}

Map<String, dynamic> _$SpotToJson(Spot instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortName': instance.shortName,
      'titleImagePath': instance.titleImagePath,
      'validWindDirections': instance.validWindDirections,
      'location': instance.location,
      'icmImageLocation': instance.icmImageLocation,
      'windguruUrl': instance.windguruUrl?.toString(),
      'description': instance.description
    };
