import 'dart:async';

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'settings.dart';

class SettingsRepository {
  Future setSettings(Settings settings) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    
    return await prefs.setString('homePosition', this._serializeMapPosition(settings.homePosition));
  }

  Future<Settings> getSettings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var homePositionString = prefs.getString('homePosition');
    print(homePositionString);
    var homePosition = this._deserializeMapPosition(homePositionString);
    
    return new Settings(homePosition: homePosition);
  }

  String _serializeMapPosition(MapPosition mapPosition) {
    return '${mapPosition.center.latitude};${mapPosition.center.longitude};${mapPosition.zoom}';
  }

  MapPosition _deserializeMapPosition(String mapPosition) {
    if (mapPosition == null) return null;
    var mapPositionArray = mapPosition.split(';');

    return new MapPosition(
      center: new LatLng(
        double.parse(mapPositionArray[0]),
        double.parse(mapPositionArray[1]),
      ),
      zoom: double.parse(mapPositionArray[2]),
    );
  }
}
