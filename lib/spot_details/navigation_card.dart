import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:latlong/latlong.dart';

import '../navigation_launcher.dart';
import 'details_card.dart';

class NavigationCard extends StatelessWidget {
  final LatLng destination;
  final LatLng home;

  NavigationCard({
    Key key,
    @required this.destination,
    @required this.home,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var navigationLauncher = NavigationLauncher();
    var goToDestination = () => navigationLauncher.launchUrl(this.destination);
    var goHome = () => navigationLauncher.launchUrl(this.home);

    return new DetailsCard(
        title: 'Nawigacja',
        child: new Row(
          children: <Widget>[
            RaisedButton(
              onPressed: goToDestination,
              child: Text('Na spot'),
            ),
            RaisedButton(
              onPressed: goHome,
              child: Text('Do domu'),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ));
  }
}
