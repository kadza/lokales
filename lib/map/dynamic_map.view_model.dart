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
    final CameraPosition initialCameraPosition;
    GoogleMap.GoogleMapController mapController;
    
    DynamicMapViewModel({
      @required this.store, 
      @required this.clientId,
      @required this.initialCameraPosition
    });

    GoogleMap.CameraPosition getInitialCameraPosition(){
      store.dispatch(InitializeMapAction(
        clientId: this.clientId, 
        cameraPosition: this.initialCameraPosition
      ));

      return this.initialCameraPosition.toCameraPosition();
    }

    bool isMapCreated(){
      return isMapCreatedSelector(store.state, clientId);
    }

    void intialize(GoogleMap.GoogleMapController mapController) {
      this.mapController = mapController;

      store.onChange.where((state) =>
          isMapCreatedSelector(state, clientId) &&
          !cameraPositionMapSelector(state)[clientId].equals(this.mapController.cameraPosition)
      ).listen((state)
        {
          mapController.animateCamera(GoogleMap.CameraUpdate.newCameraPosition(
            cameraPositionMapSelector(state)[clientId].toCameraPosition()
          ));
        }
      );
    
      this.mapController.addListener((){
        if(isMapCreatedSelector(store.state, clientId) &&
          !cameraPositionMapSelector(store.state)[clientId].equals(this.mapController.cameraPosition))

          store.dispatch(AnimateMapAction(
            cameraPosition: CameraPosition.fromCameraPosition(this.mapController.cameraPosition),
            clientId: this.clientId
          ));
      });
    }

    void dispose(){
      store.dispatch(DisposeMapAction(clientId: this.clientId));
    }
}