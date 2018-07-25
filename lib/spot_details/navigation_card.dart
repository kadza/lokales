import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:latlong/latlong.dart';

import '../l10n/app_localization.dart';
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
        title: AppLocalizations.of(context).navigation,
        child: new Row(
          children: <Widget>[
            RaisedButton(
              onPressed: goToDestination,
              child: Text(AppLocalizations.of(context).goToSpot),
            ),
            RaisedButton(
              onPressed: goHome,
              child: Text(AppLocalizations.of(context).goHome),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ));
  }
}
