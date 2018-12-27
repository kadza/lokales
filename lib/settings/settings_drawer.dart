import 'package:flutter/material.dart';

import '../l10n/app_localization.dart';
import '../navigation/home_location/home_location.container.dart';

//TODO: move business logic to viewmodel

class SettingsDrawer extends Drawer {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        Container(
          height: 80,
          child: DrawerHeader(
            padding: EdgeInsets.all(10),
            child: Image.asset(
              'images/tlogo.png',
              alignment: Alignment.centerLeft,
            )
          )
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text(AppLocalizations.of(context).homeAddress),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeLocation(),
                ));
          },
        ),
      ],
    ));
  }
}
