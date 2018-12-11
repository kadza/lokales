import 'package:flutter/material.dart';

import '../l10n/app_localization.dart';
import '../navigation/home_location/home_location.container.dart';
import 'spot_view.dart';

class SettingsDrawer extends Drawer {
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
                      ),
                ));
          },
        ),
      ],
    ));
  }
}
