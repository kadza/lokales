import 'package:flutter_map/flutter_map.dart';
import 'package:meta/meta.dart';
import 'package:latlong/latlong.dart';
import 'navigation/home_location/home_location.state.dart';

@immutable
class AppState implements HomeLocationState{
  final MapPosition homeLocation;

  AppState({this.homeLocation});
  
  factory AppState.loading() => new AppState(
    homeLocation:  new MapPosition(
        center: new LatLng(51.0, 19.0), 
        zoom: 15.0,
    )
  );

  @override
    String toString() {
      return """
        homePosition: 
          zoom: ${this.homeLocation.zoom}, 
          position: ${this.homeLocation.center.toString()}
      """;
    }
}

