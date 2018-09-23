import 'package:flutter/foundation.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

import '../spot_details/spot_details_settings.dart';

class Settings {
  Settings({
    @required this.homePosition,
    @required this.spotDetailsSettings,
  });

  MapPosition homePosition;
  SpotDetailsSettings spotDetailsSettings;

  Settings.fromJson(Map<String, dynamic> json)
      : spotDetailsSettings = SpotDetailsSettings.fromJson(json['settings']['spotDetails']),
        homePosition = _mapPositionFromJson(json['settings']['homePosition']);

  Map<String, dynamic> toJson() => {
    'settings': {
        'spotDetails': this.spotDetailsSettings.toJson(),
        'homePosition': _mapPositionToJson(this.homePosition),
      }
    };

  static MapPosition _mapPositionFromJson(Map<String, dynamic> json) {
    final double latitude = json['latitude'];
    final double longitude = json['longitude'];
    final double zoom = json['zoom'];

    return new MapPosition(center: new LatLng(latitude, longitude), zoom: zoom);
  }

  static Map<String, dynamic> _mapPositionToJson(MapPosition mapPosition) => {
        'latitude': mapPosition.center.latitude,
        'longitude': mapPosition.center.longitude,
        'zoom': mapPosition.zoom,
      };
}
