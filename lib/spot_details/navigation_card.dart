import '../location.dart';
import '../navigation_launcher.dart';
import 'details_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavigationCard extends StatelessWidget {
  final Location location;

  NavigationCard({
    Key key,
    @required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var navigationLauncher = NavigationLanucher();
    var makeLaunchURL = () => navigationLauncher.launchUrl(location);

    return new DetailsCard(
      title: "Nawigacja",
      child: RaisedButton(
        onPressed: makeLaunchURL,
        child: Text('Prowadź'),
      ),
    );
  }
}
