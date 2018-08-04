import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:latlong/latlong.dart';

import '../l10n/app_localization.dart';
import '../spot.dart';
import 'icm_weather_forecast_cart.dart';
import 'location_card.dart';
import 'navigation_card.dart';
import 'web_view_card.dart';
import 'wind_direction_card.dart';
import 'description_card.dart';

class SpotDetailsPage extends StatelessWidget {
  final Spot spot;
  final LatLng homeLocation;

  SpotDetailsPage({
    Key key,
    @required this.spot,
    @required this.homeLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.spot.name),
      ),
      body: new SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget>[
              IcmWeatherForecastCard(location: this.spot.icmImageLocation),
              WebViewCard(
                  title: AppLocalizations.of(context).windguruWeatherForecast,
                  url: this.spot.windguruUrl),
              NavigationCard(
                  destination: this.spot.location, home: this.homeLocation),
              LocationCard(location: this.spot.location),
              WindDirectionCard(windDirections: this.spot.validWindDirections),
              DescriptionCard(description: this.spot.description),
            ],
          ),
        ),
      ),
    );
  }
}
