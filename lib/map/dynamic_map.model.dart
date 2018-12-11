import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as GoogleMaps;
import 'package:json_annotation/json_annotation.dart';

part 'dynamic_map.model.g.dart';

@immutable
@JsonSerializable()
class LatLng {
  final double longitude;
  final double latitude;

  LatLng({@required this.longitude, @required this.latitude});

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);

  Map<String, dynamic> toJson() => _$LatLngToJson(this);

  factory LatLng.fromLatLng(GoogleMaps.LatLng latLng) => 
    LatLng(latitude: latLng.latitude, longitude: latLng.longitude);

  GoogleMaps.LatLng toLatLng() => GoogleMaps.LatLng(this.latitude, this.longitude);

  bool equals(GoogleMaps.LatLng latLng) => 
    this.latitude == latLng.latitude && this.longitude == latLng.longitude; 
}

@immutable
@JsonSerializable()
class CameraPosition {
  final LatLng target;
  final double zoom;

  CameraPosition({@required this.target, @required this.zoom});

  factory CameraPosition.fromJson(Map<String, dynamic> json) => _$CameraPositionFromJson(json);

  Map<String, dynamic> toJson() => _$CameraPositionToJson(this);

  factory CameraPosition.fromCameraPosition(GoogleMaps.CameraPosition cameraPosition) =>
    CameraPosition(target: LatLng.fromLatLng(cameraPosition.target), zoom: cameraPosition.zoom);  

  GoogleMaps.CameraPosition toCameraPosition() =>
    GoogleMaps.CameraPosition(target: this.target.toLatLng(), zoom: this.zoom);

  bool equals(GoogleMaps.CameraPosition cameraPosition) =>
    this.target.equals(cameraPosition.target) && this.zoom == cameraPosition.zoom;
}