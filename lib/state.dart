import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'map/dynamic_map.model.dart';
import 'map/dynamic_map.state.dart';
import 'navigation/home_location/home_location.state.dart';

part 'state.g.dart';

@immutable
@JsonSerializable()
class AppState implements HomeLocationStateContainer, DynamicMapStateContainer {
  final HomeLocationState homeLocationState;
  final DynamicMapState dynamicMapState;

  AppState({@required this.homeLocationState, @required this.dynamicMapState});

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);

  Map<String, dynamic> toJson() => _$AppStateToJson(this);
  
  factory AppState.loading() {
    final CameraPosition homeLocation = CameraPosition(
      target: LatLng(longitude: 19.0, latitude: 51.0), 
      zoom: 10
    );
    
    return AppState(
      homeLocationState: HomeLocationState(
        homeLocation: homeLocation
      ),
      dynamicMapState: DynamicMapState(entities: Map())
    );
  }
}

