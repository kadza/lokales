import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import './map/dynamic_map.model.dart';
import './map/dynamic_map.state.dart';
import './navigation/home_location/home_location.state.dart';
import './row_column.model.dart';
import './spot/settings/spot_settings.model.dart';
import './spot/spot.model.dart';
import './spot/spot.state.dart';

part 'state.g.dart';

@immutable
@JsonSerializable()
class AppState implements HomeLocationStateContainer, DynamicMapStateContainer, SpotStateContainer {
  final HomeLocationState homeLocationState;
  final DynamicMapState dynamicMapState;
  final SpotState spotState;

  AppState({
    @required this.homeLocationState, 
    @required this.dynamicMapState,
    @required this.spotState,
  });

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);

  Map<String, dynamic> toJson() => _$AppStateToJson(this);
  
  factory AppState.loading() {
    final spotMapZoomLevel = 5.0;

    final spotMap = Map<String, Spot>.from({
      "1": new Spot(
        id: "1",
        name: 'Czarnocin',
        shortName: 'Czarnocin',
        icmImageLocation: RowColumn(row: 423, column: 227),
        validWindDirections: ["NW", "SE"],
        location: CameraPosition(
          target: LatLng(latitude: 51.608700, longitude: 19.699706),
          zoom: spotMapZoomLevel
        ),
        windguruUrl: Uri.parse("https://www.windguru.cz/4880"),
        description: "czarnocin",
        titleImagePath: 'images/czarnocin.png',
      ),
      "2": new Spot(
        id: "2",
        name: 'Zalew Sulejowski - Karolinów',
        shortName: 'Karolinów',
        icmImageLocation: RowColumn(row: 430, column: 234),
        validWindDirections: ["SW"],
        location: CameraPosition(
          target: LatLng(latitude: 51.451805, longitude: 19.971582),
          zoom: spotMapZoomLevel
        ),
        windguruUrl: Uri.parse("https://www.windguru.cz/32462"),
        description: "zalew-sulejowski",
        titleImagePath: 'images/czarnocin.png',
      ),
      "3": new Spot(
        id: "3",
        name: 'Chałupy - Chałupy 6',
        shortName: 'Chałupy 6',
        icmImageLocation: RowColumn(row: 332, column: 206),
        validWindDirections: ["W", "SW", "S", "SE"],
        location: new CameraPosition(
          target: LatLng(latitude: 54.761199, longitude: 18.499220),
          zoom: spotMapZoomLevel
        ),
        windguruUrl: Uri.parse("https://www.windguru.cz/597178"),
        description: "chalupy",
        titleImagePath: 'images/czarnocin.png',
      ),
    });

    final spotSettings =  SpotSettings(
      isDescriptionVisible: true,
      isLocationVisible: true,
      isWindDirectionsVisible: true,
      isWindguruVisible: true,
      isIcmVisible: true,
    );

    final CameraPosition homeLocation = CameraPosition(
      target: LatLng(longitude: 19.0, latitude: 51.0), 
      zoom: 10
    );
    
    return AppState(
      homeLocationState: HomeLocationState(
        homeLocation: homeLocation
      ),
      dynamicMapState: DynamicMapState(entities: Map()),
      spotState: SpotState(
        settings: spotSettings, 
        selectedSpotId: null,
        entities: spotMap
      )
    );
  }
}

