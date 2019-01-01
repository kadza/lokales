import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './location_card.view_model.dart';
import '../../l10n/app_localization.dart';
import '../../static_maps_provider.dart';
import '../details_card.dart';

class LocationCardView extends StatelessWidget {
  final LocationCardViewModel viewModel;

  LocationCardView({
    Key key,
    @required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locations = new List();
    final location = viewModel.location.target;
    locations
        .add({"latitude": location.latitude, "longitude": location.longitude});
    locations
        .add({"latitude": location.latitude, "longitude": location.longitude});
    var apiKey = "AIzaSyAZO7rzoyHXvWtpl81vGwDtU1udaykZbaA";
    return DetailsCard(
      title: AppLocalizations.of(context).spotLocation,
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
