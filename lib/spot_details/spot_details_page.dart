import '../spot.dart';
import 'icm_weather_forecast_cart.dart';
import 'location_card.dart';
import 'navigation_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'web_view_card.dart';
import 'wind_direction_card.dart';

class SpotDetailsPage extends StatelessWidget {
  final Spot spot;

  SpotDetailsPage({
    Key key,
    @required this.spot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(spot.name),
      ),
      body: new SingleChildScrollView(
        child: new Center(
          child: new Column(
            children: <Widget>[
              IcmWeatherForecastCard(location: spot.icmImageLocation),
              WebViewCard(title: "Windguru", url: spot.windguruUrl),
              NavigationCard(location: spot.location),
              LocationCard(location: spot.location),
              WindDirectionCard(windDirections: spot.validWindDirections),
            ],
          ),
        ),
      ),
    );
  }
}
