import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import '../l10n/app_localization.dart';
import 'home_location.dart';
import 'spot_view.dart';

class SettingsDrawer extends Drawer {
  final MapPosition
      initialHomePosition; // This widget is   final LatLng initialHomeLocation;
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
            title:
                new Text(AppLocalizations.of(context).spotDetailsConfiguration),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SpotView(),
                  ));
            },
          ),
          new ListTile(
            title: new Text(AppLocalizations.of(context).homeAddress),
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
