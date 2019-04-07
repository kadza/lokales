import 'dart:ui' show hashValues;

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

  GoogleMaps.LatLng toLatLng() =>
      GoogleMaps.LatLng(this.latitude, this.longitude);

  bool equals(GoogleMaps.LatLng latLng) =>
      this.latitude == latLng.latitude && this.longitude == latLng.longitude;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    final LatLng typedOther = other as LatLng;
    return latitude == typedOther.latitude && longitude == typedOther.longitude;
  }

  @override
  int get hashCode => hashValues(latitude, longitude);
}

@immutable
@JsonSerializable()
class CameraPosition {
  final LatLng target;
  final double zoom;

  CameraPosition({@required this.target, @required this.zoom});

  factory CameraPosition.fromJson(Map<String, dynamic> json) =>
      _$CameraPositionFromJson(json);

  Map<String, dynamic> toJson() => _$CameraPositionToJson(this);

  factory CameraPosition.fromCameraPosition(
          GoogleMaps.CameraPosition cameraPosition) =>
      CameraPosition(
          target: LatLng.fromLatLng(cameraPosition.target),
          zoom: cameraPosition.zoom);

  GoogleMaps.CameraPosition toCameraPosition() => GoogleMaps.CameraPosition(
      target: this.target.toLatLng(), zoom: this.zoom);

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    final CameraPosition typedOther = other as CameraPosition;
    return target == typedOther.target && zoom == typedOther.zoom;
  }

  @override
  int get hashCode => hashValues(target, zoom);
}

@immutable
@JsonSerializable()
class Marker {
  final String markerId;
  final LatLng position;

  Marker({
    @required this.markerId,
    @required this.position,
  });

  GoogleMaps.Marker toMarker() => GoogleMaps.Marker(
        markerId: GoogleMaps.MarkerId(markerId),
        position: GoogleMaps.LatLng(
          position.latitude,
          position.longitude,
        ),
        onTap: () {
          return;
        },
      );

  factory Marker.fromJson(Map<String, dynamic> json) => _$MarkerFromJson(json);

  Map<String, dynamic> toJson() => _$MarkerToJson(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    final Marker typedOther = other as Marker;
    return position == typedOther.position;
  }

  @override
  int get hashCode => position.hashCode;
}
