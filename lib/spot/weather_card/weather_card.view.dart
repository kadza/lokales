import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../presentation/lokales_icons.dart';
import '../../ui/circular_button.view.dart';
import '../details_card.dart';

// TODO: Weather forcast translation

class WeatherCardView extends StatelessWidget {
  final VoidCallback onWindguruPressed;
  final VoidCallback onWindyPressed;

  WeatherCardView({
    Key key,
    @required this.onWindguruPressed,
    @required this.onWindyPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DetailsCard(
      title: "Weather forecast",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircularButtonView(
            onTap: onWindguruPressed,
            icon: Icon(Lokales.windguru),
          ),
          CircularButtonView(
            onTap: onWindyPressed,
            icon: Icon(Lokales.windy),
          ),
        ],
      ),
    );
  }
}
