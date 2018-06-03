import '../location.dart';
import '../static_maps_provider.dart';
import 'details_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final Location location;

  LocationCard({
    Key key,
    @required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locations = new List();
    locations.add({"latitude": location.latitude, "longitude": location.longitude});
    locations.add({"latitude": location.latitude, "longitude": location.longitude});
    var apiKey = "AIzaSyAZO7rzoyHXvWtpl81vGwDtU1udaykZbaA";
    return DetailsCard(
      title: "Miejsce",
      child: Column(
        children: <Widget>[
          StaticMap(apiKey,
              width: 400, height: 400, locations: locations, zoom: 12),
          new Text("${location.latitude}, ${location.longitude}"),
        ],
      ),
    );
  }
}
