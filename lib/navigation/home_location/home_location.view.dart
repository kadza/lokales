import 'dart:async';

import 'package:flutter/material.dart';

import '../../map/dynamic_map.view.dart';
import 'home_location.view_model.dart';

//TODO: move to translation
//TODO: clientId -> to constant

class HomeLocationView extends StatelessWidget {
  final HomeLocationViewModel viewModel;

  HomeLocationView({this.viewModel});

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: this._onWillPop,
        child: Scaffold(
          appBar: AppBar(title: Text("Adres domowy")),
          body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text(
                    "Jeśli chcesz nawigować ze spotu, ustaw środek mapy w docelowej lokalizacji"),
              ),
              Flexible(
                  child: DynamicMap(
                clientId: "homeLocation",
                initialCameraPosition: viewModel.homeLocation,
              ))
            ]),
          ),
        ));
  }

  Future<bool> _onWillPop() {
    viewModel.setHomeLocation();
    return Future.value(true);
  }
}
