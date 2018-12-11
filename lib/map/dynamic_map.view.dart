import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as GoogleMap;
import 'package:redux/redux.dart';

import '../state.dart';
import 'dynamic_map.model.dart';
import 'dynamic_map.view_model.dart';

//TODO: find a way to get rid of AppState

class DynamicMap extends StatefulWidget {
  final String clientId;
  final CameraPosition initialCameraPosition;

  DynamicMap({@required this.clientId, @required this.initialCameraPosition});

  @override
  State createState() => DynamicMapState(
    clientId: this.clientId,
    initialCameraPosition: initialCameraPosition,
  );
}

class DynamicMapState extends State<DynamicMap> {
  final String clientId;
  final CameraPosition initialCameraPosition;
  GoogleMap.GoogleMapController mapController;
  Store<AppState> store;
  DynamicMapViewModel viewModel;

  DynamicMapState({@required this.clientId, @required this.initialCameraPosition});

  @override
  Widget build(BuildContext context) {
    store = StoreProvider.of<AppState>(context);
    viewModel = DynamicMapViewModel(
      store: this.store, 
      clientId: clientId,
      initialCameraPosition: this.initialCameraPosition
    );

    return GoogleMap.GoogleMap(
        onMapCreated: _onMapCreated,
        options: _getMapOptions()
    );
  }
 
  void _onMapCreated(GoogleMap.GoogleMapController controller) {
    setState(() { 
      mapController = controller;
      viewModel.intialize(controller);
    });
  }

  GoogleMap.GoogleMapOptions _getMapOptions(){
    if(!viewModel.isMapCreated())
      return GoogleMap.GoogleMapOptions(
        cameraPosition: viewModel.getInitialCameraPosition(), 
        trackCameraPosition: true
      );

    return GoogleMap.GoogleMapOptions(trackCameraPosition: true);
  }
  
  @override
  void dispose() {
    super.dispose();
    viewModel.dispose();
  }
}
