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

Marker _$MarkerFromJson(Map<String, dynamic> json) {
  return Marker(
      markerId: json['markerId'] as String,
      position: json['position'] == null
          ? null
          : LatLng.fromJson(json['position'] as Map<String, dynamic>));
}

Map<String, dynamic> _$MarkerToJson(Marker instance) => <String, dynamic>{
      'markerId': instance.markerId,
      'position': instance.position
    };
