import 'package:flutter/material.dart';
import '../../map/dynamic_map.dart';
import 'home_location.view_model.dart';

class HomeLocationView extends StatelessWidget {
  final HomeLocationViewModel viewModel;

  HomeLocationView({this.viewModel});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Adres domowy")),
      body: new Padding(
        padding: new EdgeInsets.all(8.0),
        child: new Column(children: [
          new Padding(
            padding: new EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: new Text(
                "Jeśli chcesz nawigować ze spotu, ustaw środek mapy w docelowej lokalizacji"),
          ),
          new Flexible(
            child: new DynamicMap(
                position: viewModel.homePosition,
                onPositionChanged: viewModel.onHomePositionChanged),
          ),
        ]),
      ),
    );
  }
}

