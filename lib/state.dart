import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import './map/dynamic_map.model.dart';
import './map/dynamic_map.state.dart';
import './media/media_gallery/media_gallery.state.dart';
import './media/media_model.dart';
import './navigation/home_location/home_location.state.dart';
import './row_column.model.dart';
import './spot/settings/spot_settings.model.dart';
import './spot/spot.model.dart';
import './spot/spot.state.dart';
import './web_view/web_view.state.dart';

part 'state.g.dart';

@immutable
@JsonSerializable()
class AppState
    implements
        HomeLocationStateContainer,
        DynamicMapStateContainer,
        SpotStateContainer,
        MediaGalleryStateContainer,
        WebViewStateContainer {
  final HomeLocationState homeLocationState;
  final DynamicMapState dynamicMapState;
  final SpotState spotState;
  final MediaGalleryState mediaGalleryState;
  final WebViewState webViewState;

  AppState({
    @required this.homeLocationState,
    @required this.dynamicMapState,
    @required this.spotState,
    @required this.mediaGalleryState,
    @required this.webViewState,
  });

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  Map<String, dynamic> toJson() => _$AppStateToJson(this);

  factory AppState.loading() {
    final spotMapZoomLevel = 15.0;

    final spotMap = Map<String, Spot>.from({
      '1': Spot(
        id: '1',
        name: 'Czarnocin',
        shortName: 'Czarnocin',
        icmImageLocation: RowColumn(
          row: 423,
          column: 227,
        ),
        characteristics: [
          SpotCharacteristics(
              name: "Czarnocin",
              isWaterDeep: false,
              isWaterFlat: true,
              windDirections: [WindDirection.NW, WindDirection.SE]),
        ],
        location: CameraPosition(
            target: LatLng(
              latitude: 51.608700,
              longitude: 19.699706,
            ),
            zoom: spotMapZoomLevel),
        windguruUrl: Uri.parse('https://www.windguru.cz/4880'),
        windyUrl: Uri.parse(
            'https://www.windy.com/51.609/19.700?51.606,19.696,15,m:e5bagHY'),
        description: 'czarnocin',
        titleImagePath: 'images/czarnocin.jpg',
      ),
      '2': Spot(
        id: '2',
        name: 'Zalew Sulejowski - Karolinów',
        shortName: 'Karolinów',
        icmImageLocation: RowColumn(
          row: 430,
          column: 234,
        ),
        characteristics: [
          SpotCharacteristics(
              name: "Karolinów",
              isWaterDeep: true,
              isWaterFlat: true,
              windDirections: [WindDirection.SW]),
        ],
        location: CameraPosition(
            target: LatLng(
              latitude: 51.451805,
              longitude: 19.971582,
            ),
            zoom: spotMapZoomLevel),
        windguruUrl: Uri.parse('https://www.windguru.cz/32462'),
        windyUrl: Uri.parse(
            'https://www.windy.com/51.452/19.972?51.449,19.970,15,m:e4UagIs'),
        description: 'zalew-sulejowski',
        titleImagePath: 'images/karolinow.jpg',
      ),
      '3': Spot(
        id: '3',
        name: 'Chałupy - Chałupy 6',
        shortName: 'Chałupy 6',
        icmImageLocation: RowColumn(
          row: 332,
          column: 206,
        ),
        characteristics: [
          SpotCharacteristics(
              name: "Zatoka",
              isWaterDeep: false,
              isWaterFlat: true,
              windDirections: [
                WindDirection.SW,
                WindDirection.S,
                WindDirection.SE,
                WindDirection.W
              ]),
        ],
        location: CameraPosition(
            target: LatLng(
              latitude: 54.761199,
              longitude: 18.499220,
            ),
            zoom: spotMapZoomLevel),
        windguruUrl: Uri.parse('https://www.windguru.cz/597178'),
        windyUrl: Uri.parse(
            'https://www.windy.com/54.761/18.500?54.760,18.501,15,m:fcragFZ'),
        description: 'chalupy',
        titleImagePath: 'images/chalupy6zatoka.jpg',
      ),
      '4': Spot(
        id: '4',
        name: 'Jeziorsko - Popów',
        shortName: 'Popów',
        icmImageLocation: RowColumn(
          row: 416,
          column: 206,
        ),
        characteristics: [
          SpotCharacteristics(
              name: "Popów",
              isWaterDeep: true,
              isWaterFlat: true,
              windDirections: [
                WindDirection.NW,
                WindDirection.W,
                WindDirection.SW,
              ]),
        ],
        location: CameraPosition(
            target: LatLng(
              latitude: 51.831464,
              longitude: 18.720990,
            ),
            zoom: spotMapZoomLevel),
        windguruUrl: Uri.parse('https://www.windguru.cz/3644'),
        windyUrl: Uri.parse(
            'https://www.windy.com/51.832/18.721?51.831,18.721,15,m:e5yagGn'),
        description: 'jeziorsko-popow',
        titleImagePath: 'images/popow.jpg',
      ),
      '5': Spot(
        id: '5',
        name: 'Jeziorsko - Skarpa',
        shortName: 'Skarpa',
        icmImageLocation: RowColumn(
          row: 416,
          column: 206,
        ),
        characteristics: [
          SpotCharacteristics(
              name: "Skarpa",
              isWaterDeep: true,
              isWaterFlat: true,
              windDirections: [
                WindDirection.NW,
                WindDirection.W,
                WindDirection.SW,
              ]),
        ],
        location: CameraPosition(
            target: LatLng(
              latitude: 51.836375,
              longitude: 18.7196389,
            ),
            zoom: spotMapZoomLevel),
        windguruUrl: Uri.parse('https://www.windguru.cz/3644'),
        windyUrl: Uri.parse(
            'https://www.windy.com/51.836/18.720?51.833,18.720,15,m:e5yagGn'),
        description: 'jeziorsko-skarpa',
        titleImagePath: 'images/skarpa.jpg',
      ),
      '6': Spot(
        id: '6',
        name: 'Jeziorsko - Zaspy',
        shortName: 'Zaspy',
        icmImageLocation: RowColumn(
          row: 416,
          column: 206,
        ),
        characteristics: [
          SpotCharacteristics(
              name: "Zaspy",
              isWaterDeep: true,
              isWaterFlat: true,
              windDirections: [
                WindDirection.NE,
                WindDirection.E,
                WindDirection.SE,
              ]),
        ],
        location: CameraPosition(
            target: LatLng(
              latitude: 51.822617,
              longitude: 18.668907,
            ),
            zoom: spotMapZoomLevel),
        windguruUrl: Uri.parse('https://www.windguru.cz/3644'),
        windyUrl: Uri.parse(
            'https://www.windy.com/51.824/18.669?51.821,18.669,15,m:e5xagGh'),
        description: 'jeziorsko-zaspy',
        titleImagePath: 'images/zaspy.jpg',
      ),
      '7': Spot(
        id: '7',
        name: 'Chałupy - Morze',
        shortName: 'Chałupy morze',
        icmImageLocation: RowColumn(
          row: 332,
          column: 206,
        ),
        characteristics: [
          SpotCharacteristics(
              name: "Morze",
              isWaterDeep: true,
              isWaterFlat: false,
              windDirections: [
                WindDirection.N,
                WindDirection.NW,
                WindDirection.NE,
                WindDirection.E
              ]),
        ],
        location: CameraPosition(
            target: LatLng(
              latitude: 54.765119,
              longitude: 18.498728,
            ),
            zoom: spotMapZoomLevel),
        windguruUrl: Uri.parse('https://www.windguru.cz/597178'),
        windyUrl: Uri.parse(
            'https://www.windy.com/54.764/18.503?54.762,18.502,15,m:fcragFZ'),
        description: 'chalupy-morze',
        titleImagePath: 'images/chalupy6morze.jpg',
      ),
    });

    final spotSettings = <SpotSetting>[
      SpotSetting(
        id: SpotSettingId.icm,
        isVisible: true,
      ),
      SpotSetting(
        id: SpotSettingId.weather,
        isVisible: true,
      ),
      SpotSetting(
        id: SpotSettingId.navigation,
        isVisible: true,
      ),
      SpotSetting(
        id: SpotSettingId.characteristics,
        isVisible: true,
      ),
      SpotSetting(
        id: SpotSettingId.location,
        isVisible: true,
      ),
      SpotSetting(
        id: SpotSettingId.description,
        isVisible: true,
      ),
    ];

    final CameraPosition homeLocation = CameraPosition(
      target: LatLng(
        longitude: 19.0,
        latitude: 51.0,
      ),
      zoom: 10,
    );

    Map<String, DynamicMapStateEntity> dynamicMapEntities = Map.fromEntries(
      spotMap.values.map(
        (spot) => MapEntry(
          spot.id,
          DynamicMapStateEntity(
            cameraPosition: spot.location,
            isCameraPositionFromMap: false,
            areGesturesEnabled: false,
            markers: Set<Marker>.from(
              [
                Marker(
                  markerId: spot.id,
                  position: spot.location.target,
                ),
              ],
            ),
          ),
        ),
      ),
    );
    dynamicMapEntities[clientId] = DynamicMapStateEntity(
      cameraPosition: homeLocation,
      isCameraPositionFromMap: false,
      areGesturesEnabled: true,
      markers: Set<Marker>(),
    );

    return AppState(
      homeLocationState: HomeLocationState(
        ui: HomeLocationUi(isPromptVisible: true),
      ),
      dynamicMapState: DynamicMapState(
        entities: dynamicMapEntities,
      ),
      spotState: SpotState(
        settings: spotSettings,
        selectedSpotId: null,
        entities: spotMap,
      ),
      mediaGalleryState: MediaGalleryState(
        entities: Map<String, Media>(),
      ),
      webViewState: null,
    );
  }
}
