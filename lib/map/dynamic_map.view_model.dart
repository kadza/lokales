import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as GoogleMap;
import 'package:redux/redux.dart';

import 'dynamic_map.action.dart';
import 'dynamic_map.model.dart';
import 'dynamic_map.selector.dart';
import 'dynamic_map.state.dart';

typedef CameraPosition CameraPositionSelector(DynamicMapState state);

class DynamicMapViewModel {
  final String clientId;
  final Store<DynamicMapStateContainer> store;
  CameraPosition initialCameraPosition;
  GoogleMap.GoogleMap map;

  DynamicMapViewModel({
    @required this.store,
    @required this.clientId,
  });

  GoogleMap.CameraPosition getInitialCameraPosition() {
    return dynamicMapStateEntitySelector(store.state, clientId)
        .cameraPosition
        .toCameraPosition();
  }

  Set<GoogleMap.Marker> getInitialMarkers() {
    return dynamicMapStateEntitySelector(store.state, clientId)
        .markers
        .map((marker) => marker.toMarker())
        .toSet();
  }

  bool areGesturesEnabled() {
    return dynamicMapStateEntitySelector(store.state, clientId)
        .areGesturesEnabled;
  }

  void intialize(GoogleMap.GoogleMapController mapController) {
    store.onChange
        .where((state) => isMapCreatedSelector(state, clientId))
        .listen((state) {
      if (!dynamicMapStateEntitySelector(state, clientId)
          .isCameraPositionFromMap)
        mapController.animateCamera(
          GoogleMap.CameraUpdate.newCameraPosition(
              dynamicMapStateEntitySelector(state, clientId)
                  .cameraPosition
                  .toCameraPosition()),
        );
    });
  }

  void onCameraMove(GoogleMap.CameraPosition cameraPosition) {
    if (isMapCreatedSelector(store.state, clientId))
      store.dispatch(
        SetCameraPositionAction(
          cameraPosition: CameraPosition.fromCameraPosition(cameraPosition),
          clientId: this.clientId,
          isCameraPositionFromMap: true,
        ),
      );
  }
}
