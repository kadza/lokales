import 'package:redux/redux.dart';
import 'package:test/test.dart';

import '../../lib/map/dynamic_map.model.dart';
import '../../lib/map/dynamic_map.state.dart';
import '../../lib/map/dynamic_map.view_model.dart';

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

  Store<DynamicMapStateContainer> store = Store<DynamicMapStateContainer>(
    null,
    initialState: DynamicMapStateContainer(
      dynamicMapState: DynamicMapState(
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
      ),
    ),
  );

  test('getInitialMarkers', () {
    final sut = DynamicMapViewModel(
      clientId: clientId,
      store: store,
    );

    final result = sut.getInitialMarkers();

    expect(result, isNotNull);
    expect(result, isNotEmpty);
    expect(result.first, marker.toMarker());
  });

  test('getInitialCameraPosition', () {
    final DynamicMapViewModel sut = DynamicMapViewModel(
      clientId: clientId,
      store: store,
    );

    final result = sut.getInitialCameraPosition();

    expect(result, isNotNull);
    expect(result, cameraPosition.toCameraPosition());
  });

  test('areGesturesEnabled', () {
    final DynamicMapViewModel sut = DynamicMapViewModel(
      clientId: clientId,
      store: store,
    );

    final result = sut.areGesturesEnabled();

    expect(result, isTrue);
  });
}
