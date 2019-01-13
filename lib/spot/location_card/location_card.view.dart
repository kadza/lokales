import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localization.dart';
import '../../map/dynamic_map.model.dart';
import '../../static_maps_provider.dart';
import '../details_card.dart';

class LocationCardView extends StatelessWidget {
  final CameraPosition location;

  LocationCardView({
    Key key,
    @required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locations = List();
    locations.add({
      "latitude": location.target.latitude,
      "longitude": location.target.longitude,
    });
    locations.add({
      "latitude": location.target.latitude,
      "longitude": location.target.longitude,
    });
    var apiKey = "AIzaSyAZO7rzoyHXvWtpl81vGwDtU1udaykZbaA";
    return DetailsCard(
      title: AppLocalizations.of(context).spotLocation,
      child: Column(
        children: <Widget>[
          StaticMap(
            apiKey,
            width: 400,
            height: 400,
            locations: locations,
            zoom: 12,
          ),
          Text("${location.target.latitude}, ${location.target.longitude}"),
        ],
      ),
    );
  }
}
