// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_map.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatLng _$LatLngFromJson(Map<String, dynamic> json) {
  return LatLng(
      longitude: (json['longitude'] as num)?.toDouble(),
      latitude: (json['latitude'] as num)?.toDouble());
}

Map<String, dynamic> _$LatLngToJson(LatLng instance) => <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude
    };

CameraPosition _$CameraPositionFromJson(Map<String, dynamic> json) {
  return CameraPosition(
      target: json['target'] == null
          ? null
          : LatLng.fromJson(json['target'] as Map<String, dynamic>),
      zoom: (json['zoom'] as num)?.toDouble());
}

Map<String, dynamic> _$CameraPositionToJson(CameraPosition instance) =>
    <String, dynamic>{'target': instance.target, 'zoom': instance.zoom};
