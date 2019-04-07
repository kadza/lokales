import 'package:test/test.dart';

import '../../lib/map/dynamic_map.action.dart';
import '../../lib/map/dynamic_map.model.dart';
import '../../lib/map/dynamic_map.reducer.dart';
import '../../lib/map/dynamic_map.state.dart';

void main() {
  final clientId = "clientId";

  final marker = Marker(
    markerId: 'markerId',
    position: LatLng(
      latitude: 1,
      longitude: 1,
    ),
  );

  final cameraPosition = CameraPosition(
    target: LatLng(
      latitude: 0,
      longitude: 0,
    ),
    zoom: 5,
  );

  final initialState = DynamicMapState(
    entities: Map<String, DynamicMapStateEntity>.fromEntries(
      [
        MapEntry(
          clientId,
          DynamicMapStateEntity(
            cameraPosition: cameraPosition,
            isCameraPositionFromMap: false,
            markers: Set<Marker>.from([marker]),
            areGesturesEnabled: true,
          ),
        ),
      ],
    ),
  );

  test('setCameraPosition', () {
    final state = dynamicMapReducer(
        initialState,
        SetCameraPositionAction(
          cameraPosition: cameraPosition,
          isCameraPositionFromMap: false,
          clientId: clientId,
        ));

    expect(state.entities[clientId], isNotNull);
    expect(state.entities[clientId].cameraPosition, cameraPosition);
    expect(state.entities[clientId].isCameraPositionFromMap, isFalse);
  });
}
