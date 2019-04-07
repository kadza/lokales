import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as GoogleMap;
import 'package:redux/redux.dart';

import '../state.dart';
import 'dynamic_map.view_model.dart';

class DynamicMap extends StatefulWidget {
  final String clientId;

  DynamicMap({
    @required this.clientId,
  });

  @override
  State createState() => DynamicMapState(
        clientId: this.clientId,
      );
}

class DynamicMapState extends State<DynamicMap> {
  final String clientId;
  GoogleMap.GoogleMapController mapController;
  Store<AppState> store;
  DynamicMapViewModel viewModel;

  DynamicMapState({
    @required this.clientId,
  });

  @override
  Widget build(BuildContext context) {
    store = StoreProvider.of<AppState>(context);
    viewModel = DynamicMapViewModel(
      store: this.store,
      clientId: clientId,
    );

    final map = GoogleMap.GoogleMap(
      onMapCreated: _onMapCreated,
      onCameraMove: viewModel.onCameraMove,
      initialCameraPosition: viewModel.getInitialCameraPosition(),
      markers: viewModel.getInitialMarkers(),
      rotateGesturesEnabled: viewModel.areGesturesEnabled(),
      scrollGesturesEnabled: viewModel.areGesturesEnabled(),
      zoomGesturesEnabled: viewModel.areGesturesEnabled(),
      tiltGesturesEnabled: viewModel.areGesturesEnabled(),
    );

    viewModel.map = map;

    return map;
  }

  void _onMapCreated(GoogleMap.GoogleMapController controller) {
    setState(() {
      mapController = controller;
      viewModel.intialize(controller);
    });
  }
}
