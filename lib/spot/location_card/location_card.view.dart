import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localization.dart';
import '../../map/dynamic_map.model.dart';
import '../../map/dynamic_map.view.dart';
import '../details_card.dart';

class LocationCardView extends StatelessWidget {
  final CameraPosition location;
  final String clientId;

  LocationCardView({
    Key key,
    @required this.location,
    @required this.clientId,
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
    return DetailsCard(
      title: AppLocalizations.of(context).spotLocation,
      child: Column(
        children: <Widget>[
          Container(
            child: DynamicMap(
              clientId: clientId,
            ),
            constraints: BoxConstraints(
              maxHeight: 400,
            ),
          ),
          Text("${location.target.latitude}, ${location.target.longitude}"),
        ],
      ),
    );
  }
}
