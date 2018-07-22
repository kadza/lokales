import 'package:flutter/material.dart';
import 'home_location.dart';
import 'spot_view.dart';
import 'package:flutter_map/flutter_map.dart';

class SettingsDrawer extends Drawer {
  final MapPosition initialHomePosition; // This widget is   final LatLng initialHomeLocation;
  final OnPositionChangedFn onHomePositionChanged;

  SettingsDrawer({
    Key key,
    @required this.initialHomePosition,
    this.onHomePositionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Drawer(
        child: new ListView(
      children: <Widget>[
        new ListTile(
          title: new Text('Spot - widok'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SpotView(),
                ));
          },
        ),
        new ListTile(
          title: new Text('Adres domowy'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeLocation(
                        homePosition: this.initialHomePosition,
                        onPositionChanged: this.onHomePositionChanged,
                      ),
                ));
          },
        ),
      ],
    ));
  }
}
